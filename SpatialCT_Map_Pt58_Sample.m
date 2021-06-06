
%% Pt58 - READ IN DICOM INFO
surf_total_pt58 = [];

% 1) try isolating only breast info
cd('D:\d14068-58-anon')
pt58_isoslice = dicomread('CT.1.2.840.113619.2.55.3.3179473588.458.1557832509.135.83.dcm');
dicom_info = dicominfo('CT.1.2.840.113619.2.55.3.3179473588.458.1557832509.135.83.dcm');
x_ps = dicom_info.PixelSpacing(1); 
y_ps = dicom_info.PixelSpacing(2); 
z_ss = dicom_info.SliceThickness;

figure(10)
imagesc(pt58_isoslice) 
h = imrect();
testmask = createMask(h);

% 2) read in dicom info
for i = 1:134
    %clearvars -except surf_total testmask i ;
    % read in image
    cd('D:\d14068-58-anon')
    formatSpec = 'CT.1.2.840.113619.2.55.3.3179473588.458.1557832509.135.%d.dcm';
    filename = sprintf(formatSpec,i);
    im = dicomread(filename);
    surf_breast_pt58(:,:,i) = double(im).*testmask - 1024;
    surf_total_pt58(:,:,i) = double(im)- 1024;
end

close

%% Now Build Isosurface and sample HU
[m,n,p] = size(surf_breast_pt58);
[X,Y,Z] = meshgrid(1:n,1:m,1:p);
figure(3)
clf
isosurface(X,Y,Z,surf_breast_pt58, -150);
axis image
f = figure(3);
f.CurrentAxes.ZDir = 'Reverse';

surf_normals_pt58 = surf_breast_pt58;
% surf_normals_pt58 = surf_total_pt58;
% [m,n,p] = size(surf_normals_pt58);
% [X,Y,Z] = meshgrid(1:n,1:m,1:p);

% 5) choose isosurface threshold accordingly
clear fv fv_new test n_new ftest fv_test2 ntest rows
fv = isosurface(X,Y,Z,surf_normals_pt58, -150);

%try and isolate all the surfacenormals whose has x greater than like 0.3
fv_new = fv.vertices;
%create the new isosurface
n_new = isonormals(surf_normals_pt58,fv_new);
n_new2 =  isonormals(surf_normals_pt58,fv_new);

% now isolate zero guys and tell them to get the hell out.
ftest = fv_new;
ftest(ftest==0) = NaN;
[rows, columns] = find(~isnan(ftest));
fv_test2 = ftest(rows,:);
ntest = n_new2(rows,:);

figure(3)
clf
isosurface(X,Y,Z,surf_breast_pt58, -150);
axis image
f = figure(3);
f.CurrentAxes.ZDir = 'Reverse';
 hold on 
clear ds_1 ds_2 ds_3 ds1 ds2 ds3 
clear n_1 n_2 n_3 n1 n2 n3
%downsample by a factor of _____
f = 10;
ds_1 = fv_new(:,1,:);
ds1 = ds_1(1:f:size(n_new2,1));
ds_2 = fv_new(:,2,:);
ds2 = ds_2(1:f:size(n_new2,1));
ds_3 = fv_new(:,3,:); 
ds3 = ds_3(1:f:size(n_new2,1));

n_1 = n_new2(:,1,:);
n1 = n_1(1:f:size(n_new2,1));
n_2 = n_new2(:,2,:);
n2 = n_2(1:f:size(n_new2,1));
n_3 = n_new2(:,3,:);
n3 = n_3(1:f:size(n_new2,1));

hold on
% plot3([ds1 ds1+0.05*n1]',...
%     [ds2 ds2+0.05*n2]',...
%     [ds3 ds3+0.05*n3]')
% 
% axis image
% f = figure(3);
% f.CurrentAxes.ZDir = 'Reverse';
% view(-23.15,-22.70); 
% camup([0.522510455994502,-0.805578381898752,-0.279331870709031]); 
% campos([-611.92,-833.866, 1026.3])
% camtarget([143.05,248.1,104.75])
% xlabel('X')
% ylabel('Y')
% zlabel('Z')


% 5) choose isosurface threshold accordingly
clear HU_vertex_sampled_array HU_vertex_sampled HU_vertex_sampled
HU_vertex_sampled = zeros([1, size(ds_1,1)]);
% get all the dot products between each of the vectors.
for i = 1:size(ds_1,1)
    clear vertex
    %find the vertx point on the isosurface
    vertex = [ds_1(i) ds_2(i) ds_3(i)];
    % get the average 8 pixels down at each vertex
    HU_vertex_sampled_array = NaN([1,8]);
    
    vect = [n_1(i) n_2(i) n_3(i)];
    unit_vect = vect./norm(vect);
    for j = 16:64 %depth = 
        sample_x = round(vertex(1)+ (-j/16.*unit_vect(1)));
        sample_y = round(vertex(2)+ (-j/16.*unit_vect(2)));
        sample_z = round(vertex(3)+ (-j/16.*unit_vect(3)));
       
        %only go in the loop if we're dealing with real pixels
        if ~isnan(sample_x) && ~isnan(sample_y) && ~isnan(sample_z)
            if sample_z > 134 || sample_z <= 0
                HU_vertex_sampled_array(j) = NaN;
            else
                HU_vertex_sampled_array(j) = double(surf_breast_pt58(sample_y,...
                   sample_x, sample_z));
                if HU_vertex_sampled_array(j) == 0 
                    HU_vertex_sampled_array(j) = NaN;
                end
            end
        end
    end
%     figure(3)
%     hold on
%     plot3([vertex(1) vertex(1)+ (-j*unit_vect(1))]',...
%         [vertex(2) vertex(2)+ (-j.*unit_vect(2))]',...
%         [vertex(3) vertex(3)+ (-j.*unit_vect(3))]')
    HU_vertex_sampled(i) = mean(HU_vertex_sampled_array(~isnan(HU_vertex_sampled_array)));
    clear HU_vertex_sampled_array unit_vect sample_x sample_y sample_z

end
%% Color the faces with the heterogeneous HU
[m,n,q] = size(surf_breast_pt58);
[X,Y,Z] = meshgrid(x_ps:x_ps:n*x_ps,y_ps:y_ps:m*y_ps,z_ss:z_ss:q*z_ss);
figure(224)
clf;
p = patch(isosurface(X,Y,Z,surf_breast_pt58,-150));
isonormals(X,Y,Z,surf_breast_pt58,p)
isocolors(X,Y,Z,surf_breast_pt58,p)
p.FaceVertexCData = HU_vertex_sampled'; 
p.FaceColor = 'interp';
p.EdgeColor = 'none';
axis image
f=gcf;
f.CurrentAxes.ZDir = 'Reverse';
view(-41,-38.2358); camup([0.4859 -0.8354 -0.2588]); 
campos([-2473.5, -1807.5, 1863.3])
camtarget([258.5334 295.45 187.25])
colorbar; colormap(gray); caxis([-300 100]);
set(gca,'Color','k')

% %% use the information in the calibration folder to orient the patient correctly.
% cd('C:\ProgramData\DoseOptics\C-Dose Research\data\14068_Pt58\2018-08-31 11-39-08-834')
% %import cam0 using data importer
% pos_x = str2double(cam0(1,2));
% pos_y = str2double(cam0(2,2));
% pos_z = str2double(cam0(3,2));
% 
% focal_pos_x = str2double(cam0(4,2));
% focal_pos_y = str2double(cam0(5,2));
% focal_pos_z = str2double(cam0(6,2));
% 
% view_up_x = str2double(cam0(7,2));
% view_up_y = str2double(cam0(8,2));
% view_up_z = str2double(cam0(9,2));
% view_angle = str2double(cam0(10,2));
% 
% figure(224)
% view(0,0); 
% camup([0.4859 -0.8354 -0.2588]); 
% camup([view_up_x view_up_y -view_up_z]); 
% campos([pos_x, pos_y, -pos_z])
% camtarget([focal_pos_x focal_pos_y  focal_pos_z])
% camtarget([0 0 0])



%% pull in the background images
%Begin File read in. 
%% READ in the BKG Cherenkov Image for Registration
cd('C:\ProgramData\DoseOptics\C-Dose Research\data\14068_Pt58\2019-05-29 08-45-36-310')
bkg_stack = read_dovi('meas_s0_cam0.dovi');
summed_bkg_stack = sum(bkg_stack, 3); 
figure(10)
imagesc(summed_bkg_stack); axis image; colormap(gray); axis off; 
% 
% summed_bkg_stack = medfilt2(summed_bkg_stack, [5 5]);
% imagesc(summed_bkg_stack*2); axis image; colormap(gray); axis off; 

%% take a look at the dose normalized images
%pulled in from Most Recent Process folder
cd('E:\Reprocessed_Everything\Most Recent Process\Uncorrected_DoseNormalaized_Stacks')
load Pt58_Ckov_DoseNorm_th_RPO6
load Pt58_Ckov_DoseNorm_th_LAO6

cmap1=magma(2.^16);
figure(4)
[ha, pos] = tight_subplot(4,5,[.001 .001],[.001 .001],[.001 .001]);
clf
for i = 1:size(Pt58_Ckov_DoseNorm_th_c_RPO, 3)
    figure(4)
    subplot('position', pos{i})
    imagesc(Pt58_Ckov_DoseNorm_th_c_RPO(:,:,i)); axis image; axis off; 
    colormap(cmap1); caxis([0 5.5e4]);
end

%% msking
figure(10)
imagesc(Pt58_Ckov_DoseNorm_th_RPO6(:,:,1)); caxis([0 5e4]);
im = Pt58_Ckov_DoseNorm_th_RPO6(:,:,1);
im(im==Inf) = NaN;
Pt58_RPO6_m_bin = imbinarize(Pt58_Ckov_DoseNorm_th_RPO6(:,:,1), 1e-12.*max(max(im)));
Pt58_RPO6_ckov_threshold = Pt58_Ckov_DoseNorm_th_RPO6(:,:,1).*Pt58_RPO6_m_bin;

im = Pt58_Ckov_DoseNorm_th_LAO6(:,:,1);
im(im==Inf) = NaN;
Pt58_LAO6_m_bin = imbinarize(Pt58_Ckov_DoseNorm_th_LAO6(:,:,1),1e-12.*max(max(im)));
Pt58_LAO6_ckov_threshold = Pt58_Ckov_DoseNorm_th_LAO6(:,:,1).*Pt58_LAO6_m_bin;

figure(1)
imagesc(Pt58_RPO6_ckov_threshold); axis image; colormap(gray); axis off; 
caxis([0 4e4])
figure(2)
imagesc(Pt58_LAO6_ckov_threshold); axis image; colormap(gray); axis off; 
caxis([0 4e4])



%% get camera properties
% figure(224)
% ax = gca;
% camupvector = ax.CameraUpVector;
% camtargetvect = ax.CameraTarget;
% camposvector = ax.CameraPosition;
% [az,el] = view;
% 
% %% apply camera properties
% view(az, el); 
% camup([camupvector]); 
% campos([camposvector])
% camtarget([camtargetvect])

%%
figure(224)
set(gca, 'Visible', 'on');
set(gca,'Color','k')
set(gca,'XTick',[], 'YTick', [], 'ZTick', [])
colorbar('off'); colormap(gray); caxis([-200 100]);
ax = gca; fig = gcf; ax.Position = [0 0 1 1]; fig.Position = [0 0 1528 955];
frame = getframe(gcf);
cd('E:\Exp86_Heterogeneous_HU\Pt_Registered_Data')
imwrite(frame.cdata,'Pt58_RB_HU.png')

clear test_im
figure(229)
test_im = sum(imread('Pt58_RB_HU.png'),3);
ax = gca; fig = gcf; ax.Position = [0 0 1 1]; fig.Position = [0 0 1528 955];
imagesc(test_im);

h=imfreehand();
figHandle_mask = createMask(h);
test_im_rescaled = imrotate(rescale(test_im.*figHandle_mask, -200, 100),-3);

figure(221)
imagesc(test_im_rescaled); axis image; 
%to get position
%test_im_cropped = imcrop(test_im_rescaled);
test_im_cropped = imcrop(test_im_rescaled, [491.5 284.5 708 463]);

s = size(test_im_cropped);
test_im_cropped_rs = imresize(test_im_cropped, 2.20*[s(1) s(2)]);
test_im_cropped_rs_pad = padarray(test_im_cropped_rs,[110 150],0,'pre');
figure(1)
imshowpair(summed_bkg_stack, test_im_cropped_rs_pad); axis image; axis off; colormap(gray);

% % co register it
% cpselect((test_im_rescaled+500)./1300, summed_bkg_stack./max(summed_bkg_stack(:)), 'WAIT', false)
% tform_58 = fitgeotrans(movingPoints_58_2, fixedPoints_58_2, 'affine');
% registered_HUMap = imwarp(test_im_rescaled, tform_58, 'OutputView', imref2d(size(test_im_cropped_rs_pad)));
% figure(1)
% imshowpair(registered_HUMap, summed_bkg_stack)

% figure(2)
% test_im_cropped_rs_pad_filt = imgaussfilt(registered_HUMap, 2);
% test_im_cropped_rs_pad_filt_recropped = imcrop(test_im_cropped_rs_pad_filt,...
%     [0 0 1920 1200]);
% sfill = size(test_im_cropped_rs_pad_filt_recropped);
% test_im_cropped_rs_pad_filt_rescaled_recropped_filled = padarray(test_im_cropped_rs_pad_filt_recropped...
%     ,[1200-sfill(1) 1920-sfill(2)],0,'post');
% test_im_cropped_rs_pad_filt_rescaled_recropped_filled(test_im_cropped_rs_pad_filt_rescaled_recropped_filled==0) = NaN;
% imagesc(test_im_cropped_rs_pad_filt_rescaled_recropped_filled); axis image; colormap(gray); axis off; 
% 
% thresholded_registered_HUMap = test_im_cropped_rs_pad_filt_rescaled_recropped_filled.*m_bin; 
% thresholded_registered_HUMap(thresholded_registered_HUMap==0) == 'NaN';
% imshowpair(thresholded_registered_HUMap, summed_bkg_stack)
% figure(1)
% imagesc(thresholded_registered_HUMap.*m_bin)
% % read in the cherenkov image.
% 
%fill in the holes and create a 1920 x 1200 image
% test_im_cropped_rs_pad_filt = imgaussfilt(test_im_cropped_rs_pad, 2);
test_im_cropped_rs_pad_filt_recropped = imcrop(test_im_cropped_rs_pad,...
    [0 0 1920 1200]);
sfill = size(test_im_cropped_rs_pad_filt_recropped);
test_im_cropped_rs_pad_filt_rescaled_recropped_filled = padarray(test_im_cropped_rs_pad_filt_recropped...
    ,[1200-sfill(1) 1920-sfill(2)],0,'post');
test_im_cropped_rs_pad_filt_rescaled_recropped_filled(test_im_cropped_rs_pad_filt_rescaled_recropped_filled==0) = NaN;
imagesc(test_im_cropped_rs_pad_filt_rescaled_recropped_filled); axis image; colormap(gray); axis off; 
Pt58_CT_HU_Map = test_im_cropped_rs_pad_filt_rescaled_recropped_filled;
cd('E:\Exp86_Heterogeneous_HU\Pt_Registered_Data')
save('Pt58_CT_HU_Map.mat', 'Pt58_CT_HU_Map')

test_RPO = Pt58_LAO6_m_bin.*test_im_cropped_rs_pad_filt_rescaled_recropped_filled;
test_RPO(test_RPO==0)=NaN;
figure(2); imagesc(test_RPO); caxis([-200 100]); axis image; axis off; colormap(gray);
Pt58_CT_HU_Map_RPO = test_RPO;

test_LAO = Pt58_LAO6_m_bin.*test_im_cropped_rs_pad_filt_rescaled_recropped_filled;
test_LAO(test_LAO==0)=NaN;
figure(1); imagesc(test_LAO); caxis([-200 100]); axis image; axis off; colormap(gray);
Pt58_CT_HU_Map_LAO = test_LAO;

cd('E:\Exp86_Heterogeneous_HU\Pt_Registered_Data')
save('Pt58_CT_HU_Map_RPO.mat', 'Pt58_CT_HU_Map_RPO')
save('Pt58_CT_HU_Map_LAO.mat', 'Pt58_CT_HU_Map_LAO')
% lets pretend there's a super rough correlation here. 
figure(11)
[ha, pos] = tight_subplot(1,2,[.001 .001],[.001 .001],[.001 .001]);
subplot('position', pos{1})
imagesc(ckov_threshold); caxis([0 6e4]); colormap(cmap1); axis image; axis off;
subplot('position', pos{2})
imagesc(test); caxis([-200 100]); colormap(cmap1); axis image; axis off;
figure(12)
clf
scatter(test(:), ckov_threshold(:), '.', 'MarkerEdgeAlpha', 0.05)
xlim([-150 10])
ylim([1e4 7e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov Int. (Dose-Normalized) (counts/Gy')
axy.FontSize = 18;

Pt58_HeteroHU_Map = test;
Pt58_Ckov_DN_Map = ckov_threshold;

Pt58_HeteroHU_Map_linear = Pt58_HeteroHU_Map(:);
Pt58_Ckov_DN_Map_linear = Pt58_Ckov_DN_Map(:);


%% save figures 
cd('E:\Exp86_Heterogeneous_HU\Pt_Registered_Data')
figure(200)
Pt58_RB_HU = test;
filename = ['Pt58_RB_HU.mat'];
save(filename)
imagesc(Pt58_RB_HU); axis image; axis off; caxis([-200 100]); colormap(gray);
ax = gca; fig = gcf; ax.Position = [0 0 1 1]; fig.Position = [0 0 1528 955];
filename = ['Pt58_RB_HU.png'];
saveas(gcf, filename)
filename = ['Pt58_RB_HU.fig'];
saveas(gcf, filename)

figure(200)
Pt58_RB_CkovDoseNorm = ckov_threshold;
filename = ['Pt58_RB_CkovDoseNorm.mat'];
save(filename)
imagesc(Pt58_RB_CkovDoseNorm); axis image; axis off; caxis([0 6e4]); colormap(cmap1);
ax = gca; fig = gcf; ax.Position = [0 0 1 1]; fig.Position = [0 0 1528 955];
filename = ['Pt58_RB_CkovDoseNorm.png'];
saveas(gcf, filename)
filename = ['Pt58_RB_CkovDoseNorm.fig'];
saveas(gcf, filename)



%% try ROIs
figure(100)
clf
for i = 1:5
    figure(101)
    imagesc(Pt58_Ckov_DN_Map); caxis([0 6e4]); colormap(cmap1); axis image; axis off;
    h=imellipse()
    m_roi = createMask(h);

    HU_data = Pt58_HeteroHU_Map.*m_roi; 
    Ckov_data =Pt58_Ckov_DN_Map.*m_roi;
    Pt58_mask_stack(:,:,i) = m_roi;
    figure(100)
    scatter(HU_data(:), Ckov_data(:), '.', 'MarkerEdgeAlpha', 0.4)
    xlim([-150 10])
    ylim([1e4 7e4])
    axy = gca;
    xlabel('Surface Sampled Radiodensity (HU)')
    ylabel('Cherenkov Int. (Dose-Normalized) (counts/Gy')
    axy.FontSize = 18;
    hold on
end



