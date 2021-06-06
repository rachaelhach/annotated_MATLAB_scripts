%% isolate all file folders and read in data / number of frames
cmap = magma(2.^16);
%WHB
cd('E:\C-Dose EDrive\data\cherenkov\Annie_FieldMatch3\2019-09-12 22-00-09-916') %
stack = read_dovi('meas_s1_cam0.dovi');
WHB_frames = size(stack, 3);
cumulative = sum(stack,3);
imagesc(cumulative)
WHB_trans_br = cumulative;
imagesc(WHB_trans_br); axis image; axis off; colormap(cmap);
 
% SCV 0 
cd('E:\C-Dose EDrive\data\cherenkov\Annie_FieldMatch3\2019-09-12 22-06-20-161')%
stack = read_dovi('meas_s1_cam0.dovi');
SCV0_frames = size(stack, 3);
cumulative = sum(stack,3);
imagesc(cumulative)
SCV0_trans_br = cumulative;
imagesc(SCV0_trans_br); axis image; axis off; colormap(cmap);

% SCV_m1
cd('E:\C-Dose EDrive\data\cherenkov\Annie_FieldMatch3\2019-09-12 23-32-27-251') %
stack = read_dovi('meas_s1_cam0.dovi');
SCV_m1_frames = size(stack, 3);
cumulative = sum(stack,3);
imagesc(cumulative)
SCV_m1_trans_br = cumulative;
imagesc(SCV_m1_trans_br); axis image; axis off; colormap(cmap);

% SCV_m2
cd('E:\C-Dose EDrive\data\cherenkov\Annie_FieldMatch3\2019-09-12 23-35-27-787') %
stack = read_dovi('meas_s1_cam0.dovi');
SCV_m2_frames = size(stack, 3);
cumulative = sum(stack,3);
imagesc(cumulative)
SCV_m2_trans_br = cumulative;
imagesc(SCV_m2_trans_br); axis image; axis off; colormap(cmap);

% SCV_m3
cd('E:\C-Dose EDrive\data\cherenkov\Annie_FieldMatch3\2019-09-12 23-37-20-512') %
stack = read_dovi('meas_s1_cam0.dovi');
SCV_m3_frames = size(stack, 3);
cumulative = sum(stack,3);
imagesc(cumulative)
SCV_m3_trans_br = cumulative;
imagesc(SCV_m3_trans_br); axis image; axis off; colormap(cmap);

% SCV_m5
cd('E:\C-Dose EDrive\data\cherenkov\Annie_FieldMatch3\2019-09-12 23-39-43-431') %
stack = read_dovi('meas_s1_cam0.dovi');
SCV_m5_frames = size(stack, 3);
cumulative = sum(stack,3);
imagesc(cumulative)
SCV_m5_trans_br = cumulative;
imagesc(SCV_m5_trans_br); axis image; axis off; colormap(cmap);

% SCV_m10
cd('E:\C-Dose EDrive\data\cherenkov\Annie_FieldMatch3\2019-09-12 23-42-00-718') %
stack = read_dovi('meas_s1_cam0.dovi');
SCV_m10_frames = size(stack, 3);
cumulative = sum(stack,3);
imagesc(cumulative)
SCV_m10_trans_br = cumulative;
imagesc(SCV_m10_trans_br); axis image; axis off; colormap(cmap);


% SCV_p1
cd('E:\C-Dose EDrive\data\cherenkov\Annie_FieldMatch3\2019-09-12 22-08-32-158') %
stack = read_dovi('meas_s1_cam0.dovi');
SCV_p1_frames = size(stack, 3);
cumulative = sum(stack,3);
imagesc(cumulative)
SCV_p1_trans_br = cumulative;
imagesc(SCV_p1_trans_br); axis image; axis off; colormap(cmap);

% SCV_p2
cd('E:\C-Dose EDrive\data\cherenkov\Annie_FieldMatch3\2019-09-12 23-21-38-409') %
stack = read_dovi('meas_s1_cam0.dovi');
SCV_p2_frames = size(stack, 3);
cumulative = sum(stack,3);
imagesc(cumulative)
SCV_p2_trans_br = cumulative;
imagesc(SCV_p2_trans_br); axis image; axis off; colormap(cmap);

% SCV_p3
cd('E:\C-Dose EDrive\data\cherenkov\Annie_FieldMatch3\2019-09-12 23-25-16-069')%
stack = read_dovi('meas_s1_cam0.dovi');
SCV_p3_frames = size(stack, 3);
cumulative = sum(stack,3);
imagesc(cumulative)
SCV_p3_trans_br = cumulative;
imagesc(SCV_p3_trans_br); axis image; axis off; colormap(cmap);

% SCV_p5
cd('E:\C-Dose EDrive\data\cherenkov\Annie_FieldMatch3\2019-09-12 23-27-28-362')%
stack = read_dovi('meas_s1_cam0.dovi');
SCV_p5_frames = size(stack, 3);
cumulative = sum(stack,3);
imagesc(cumulative)
SCV_p5_trans_br = cumulative;
imagesc(SCV_p5_trans_br); axis image; axis off; colormap(cmap);

% SCV_p10
cd('E:\C-Dose EDrive\data\cherenkov\Annie_FieldMatch3\2019-09-12 23-29-35-514')%
stack = read_dovi('meas_s1_cam0.dovi');
SCV_p10_frames = size(stack, 3);
cumulative = sum(stack,3);
imagesc(cumulative)
SCV_p10_trans_br = cumulative;
imagesc(SCV_p10_trans_br); axis image; axis off; colormap(cmap);

%%
% right now were gonna play with getting them co-registered to be perfect. 

%lets get the TP's in here first. 
%WHB
cd('E:\Exp78c_FieldMatch_annie\whb_0_lao')
im = sum(imread('screenshot.png'),3);
figure(10)
imagesc(im)
h = imfreehand();
an_tp_mask = createMask(h);
close
max_an_lao = max(im(:));
max_an_lao_dose = 1.67;
annie_br_whb_lao = ((im.*an_tp_mask)./max_an_lao).*max_an_lao_dose;
figure(10)
imagesc(annie_br_whb_lao)
cd('E:\Exp78c_FieldMatch_annie\whb_0_rpo')
im = sum(imread('screenshot.png'),3);
max_an_rpo = max(im(:));
max_an_rpo_dose = 1.95;
annie_br_whb_rpo = ((im.*an_tp_mask)./max_an_rpo).*max_an_rpo_dose;
figure(10)
imagesc(annie_br_whb_rpo)
annie_br_tangent_tp_total = annie_br_whb_rpo + annie_br_whb_lao;
figure(10)
imagesc(annie_br_tangent_tp_total)

%Tangent
annie_br_tang_WHB = imresize(WHB_trans_br, [1200 1920]);
annie_br_tangent_tp_rs = imresize(an_tp_mask.*annie_br_tangent_tp_total, [1200 1920]);
% REGISTER IN REG ESTIMATOR: Affine, Geometric, Monomodal, =0.797 Result
figure(1001)
imshowpair(annie_Reg_tang.RegisteredImage, annie_br_tang_WHB)

%Supraclav
cd('E:\Exp78c_FieldMatch_annie\scv_0_lao')
im = sum(imread('screenshot.png'),3);
max_an_lao = max(im(:));
max_an_lao_dose = 1.42;
annie_br_scv_lao = ((im.*an_tp_mask)./max_an_lao).*max_an_lao_dose;
figure(10)
imagesc(annie_br_scv_lao)
cd('E:\Exp78c_FieldMatch_annie\scv_0_rpo')
im = sum(imread('screenshot.png'),3);
max_an_rpo = max(im(:));
max_an_rpo_dose = 1.85;
annie_br_scv_rpo = ((im.*an_tp_mask)./max_an_rpo).*max_an_rpo_dose;
figure(10)
imagesc(annie_br_scv_rpo)
annie_br_scv_tp_total = annie_br_scv_rpo + annie_br_scv_lao;
figure(10)
imagesc(annie_br_scv_tp_total) 

%read in cherenkov scv
annie_br_SCV = imresize(SCV0_trans, [1200 1920]);
annie_br_scv_tp_rs = imresize(an_tp_mask.*annie_br_tangent_tp_total, [1200 1920]);
imshowpair(annie_Reg_scv.RegisteredImage, annie_br_SCV)

annie_br_tang_tp_regim = annie_Reg_tang.RegisteredImage;
annie_br_scv_tp_regim = imresize(imrotate(annie_Reg_scv.RegisteredImage,-1.95), size(annie_br_tang_tp_regim));

figure(10)
test_compound_annie_br_tp = real(sqrt(annie_br_tang_tp_regim.*annie_br_scv_tp_regim));
test_sum_annie_br_tp = annie_br_tang_tp_regim + annie_br_scv_tp_regim;
imagesc(test_compound_annie_br_tp); caxis([0 0.53])

%register using the image transforation from the checkerboard
compound_trans_test_reg = imwarp(test_compound_annie_br_tp, tform_test);

% %try the template
% cd('E:\Exp78c_FieldMatch_annie_br')
% scv_template = sum(imread('scv_template.png'),3);
% cpselect(test_compound_annie_br_tp./max(test_compound_annie_br_tp(:)), scv_template, 'WAIT', false)
% tform_scv_tmp = fitgeotrans(movingPoints, fixedPoints, 'affine');
% annie_br_scv_reg_temp = imwarp(test_compound_annie_br_tp, tform_scv_tmp);
% figure(11)
% imagesc(annie_br_scv_reg_temp); 
% test_sum_annie_br_tp = imwarp(test_sum_annie_br_tp, tform_test);
% figure(11)
% imagesc(test_sum_annie_br_tp)

%
max_tang_total_dose = 1.67 + 1.95;
max_scv_total_dose = 1.42 + 1.85;


%indivdual fields
TAN0_annie_br_tp_ind_ndn = imrotate(imwarp(annie_br_tang_tp_regim, tform_test), -8);
TAN0_annie_br_tp_ind =  (TAN0_annie_br_tp_ind_ndn./max(TAN0_annie_br_tp_ind_ndn(:))).*max_tang_total_dose;
SCV0_annie_br_tp_ind_ndn = imrotate(imwarp(annie_br_scv_tp_regim, tform_test), -7.9);
SCV0_annie_br_tp_ind = imresize((SCV0_annie_br_tp_ind_ndn./max(SCV0_annie_br_tp_ind_ndn(:))).*max_scv_total_dose, size(TAN0_annie_br_tp_ind));
figure(10)
imagesc(TAN0_annie_br_tp_ind); caxis([0 4]); colormap(jet); 
figure(11)
imagesc(SCV0_annie_br_tp_ind); caxis([0 4]); colormap(jet);
figure(12)
imagesc(TAN0_annie_br_tp_ind.*SCV0_annie_br_tp_ind); caxis([0 1]); colormap(jet); 
figure(13)
imagesc(TAN0_annie_br_tp_ind+SCV0_annie_br_tp_ind); caxis([0 4]); colormap(jet); 
compound_tp_trans_an = real(sqrt(TAN0_annie_br_tp_ind.*SCV0_annie_br_tp_ind));

%then add the two, then create a mask, anything undedr 0.2
m_tan = imbinarize(TAN0_annie_br_tp_ind, 0.15.*max(TAN0_annie_br_tp_ind(:)));
m_scv = imbinarize(SCV0_annie_br_tp_ind, 0.05.*max(SCV0_annie_br_tp_ind(:)));

% ok now pad the tp to force match
%indivdual fields
pad_rows = 6;
TAN0_annie_br_tp_ind_ndn = imrotate(imwarp(annie_br_tang_tp_regim, tform_test), -8);
TAN0_annie_br_tp_ind = m_tan.*(TAN0_annie_br_tp_ind_ndn./max(TAN0_annie_br_tp_ind_ndn(:)).*max_tang_total_dose);
SCV0_annie_br_tp_ind_ndn = padarray(imrotate(imwarp(annie_br_scv_tp_regim, tform_test), -7.6), pad_rows, 0, 'pre');
SCV0_annie_br_tp_ind_ndn2 = imresize(SCV0_annie_br_tp_ind_ndn(1:end-pad_rows, :), size(TAN0_annie_br_tp_ind));
SCV0_annie_br_tp_ind = m_scv.*(SCV0_annie_br_tp_ind_ndn2./max(SCV0_annie_br_tp_ind_ndn2(:)).*max_scv_total_dose);


figure(10)
imagesc(TAN0_annie_br_tp_ind); caxis([0 4]); colormap(jet); 
figure(11)
imagesc(SCV0_annie_br_tp_ind); caxis([0 4]); colormap(jet);
figure(12)
imagesc(real(sqrt(TAN0_annie_br_tp_ind.*SCV0_annie_br_tp_ind))); caxis([0 1]); colormap(jet); 
figure(13)
imagesc(TAN0_annie_br_tp_ind+SCV0_annie_br_tp_ind); caxis([0 4]); colormap(jet); 
compound_tp_trans_an = real(sqrt(TAN0_annie_br_tp_ind.*SCV0_annie_br_tp_ind));


%now test it out on a cherenkov image
%indivdual fields
TAN0_annie_br_trans = imrotate(imwarp(annie_br_tang_WHB, tform_test), -8); 
SCV0_annie_br_trans = imresize(imrotate(imwarp(annie_br_SCV, tform_test), -7.6), size(TAN0_annie_br_trans));

test_ckov_sum = TAN0_annie_br_trans + SCV0_annie_br_trans;
figure(14)
imagesc(test_ckov_sum)
caxis([0 1e5])

%% deconvolve the ckov images
figure(100)
imagesc(TAN0_annie_br_trans)

% sum the edge spread into a line spread 
figure(100)
line_spread_im = TAN0_annie_br_trans./max(TAN0_annie_br_trans(:));
clear line_spread_imc line_spread_prof
line_spread_imc = rot90(imcrop(line_spread_im),1);
line_spread_prof = sum(line_spread_imc, 1);
figure(100)
plot(1:1:length(line_spread_prof), line_spread_prof)
clear x_sp_px
x_sp_px = (1:1:length(line_spread_prof));

% take the derivative
der_ls = diff(line_spread_prof)./diff(x_sp_px);
figure(101)
plot(1:1:length(x_sp_px(2:end)), der_ls)

%isolate the region that you want to rotate. 
gauss_ps_1d = der_ls;
figure(10)
plot(1:1:length(x_sp_px(2:end)), gauss_ps_1d);

%once created in matlab, extend it to a 2D gaussian. 
x_sp_px2 = x_sp_px(2:end);
y_sp_px2 = x_sp_px(2:end);
clear x_sp_px_shift y_sp_px_shift
x_sp_px_shift =  0.13.*[-(length(x_sp_px2)/2-0.5):1:(length(x_sp_px2)/2-0.5)];
y_sp_px_shift =  0.13.*[-(length(y_sp_px2)/2-0.5):1:(length(y_sp_px2)/2-0.5)];

[xm2,ym2] = meshgrid(x_sp_px_shift ,y_sp_px_shift);

gaussian2D_annie_br_Tang = g_an_f.a1*exp(-((xm2-g_an_f.b1)/g_an_f.c1).^2 - ((ym2-g_an_f.b1)/g_an_f.c1).^2);
figure(10)
imagesc(gaussian2D_annie_br_Tang)

annie_br_Tang_decon = deconvlucy(TAN0_annie_br_trans, gaussian2D_annie_br_Tang, 1);
figure(10)
imagesc(annie_br_Tang_decon)

%now to the SCV field
figure(100)
imagesc(SCV0_annie_br_trans)

% sum the edge spread into a line spread 
clear line_spread_imc line_spread_prof
figure(100)
line_spread_im = SCV0_annie_br_trans./max(SCV0_annie_br_trans(:));
line_spread_imc = rot90(imcrop(line_spread_im),1);
line_spread_prof = sum(line_spread_imc, 1);
figure(100)
plot(1:1:length(line_spread_prof), line_spread_prof)
x_sp_px = (1:1:length(line_spread_prof));

% take the derivative
der_ls = diff(line_spread_prof)./diff(x_sp_px);
figure(101)
plot(1:1:length(x_sp_px(2:end)), der_ls)

%isolate the region that you want to rotate. 
gauss_ps_1d = -der_ls;
figure(10)
plot(1:1:length(x_sp_px(2:end)), gauss_ps_1d);

%once created in matlab, extend it to a 2D gaussian. 
clear x_sp_px2 y_sp_px2
x_sp_px2 = x_sp_px(2:end);
y_sp_px2 = x_sp_px(2:end);
x_sp_px_shift =  0.13.*[-(length(x_sp_px2)/2-0.5):1:(length(x_sp_px2)/2-0.5)];
y_sp_px_shift =  0.13.*[-(length(y_sp_px2)/2-0.5):1:(length(y_sp_px2)/2-0.5)];

[xm2,ym2] = meshgrid(x_sp_px_shift ,y_sp_px_shift);

gaussian2D_annie_br_SCV = g_an_scv_f.a1*exp(-((xm2-g_an_scv_f.b1)/g_an_scv_f.c1).^2 - ((ym2-g_an_scv_f.b1)/g_an_scv_f.c1).^2);
figure(11)
imagesc(gaussian2D_annie_br_SCV)

annie_br_SCV0_decon = deconvlucy(SCV0_annie_br_trans, gaussian2D_annie_br_SCV, 1);

figure(19)
imagesc(TAN0_annie_br_trans + SCV0_annie_br_trans); colormap(jet);
figure(21)
diff_im = (TAN0_annie_br_trans./max(TAN0_annie_br_trans(:)) +...
    SCV0_annie_br_trans./max(SCV0_annie_br_trans(:))) - ...
    (annie_br_Tang_decon./max(annie_br_Tang_decon(:)) + annie_br_SCV0_decon./max(annie_br_SCV0_decon(:)));
imagesc(diff_im); colormap(jet);
figure(22)
imagesc(annie_br_Tang_decon + annie_br_SCV0_decon); colormap(jet);

% create a mask for the cherenkov images.
figure(22)
imagesc(annie_br_Tang_decon + annie_br_SCV0_decon); colormap(jet);
h = imfreehand();
mask_annie_br_2 = createMask(h);



%% BREATHING COMPARISONS
%scv stack 
annie_br_scv_rot = cat(3, SCV_p10_trans_br, SCV_p5_trans_br, SCV_p3_trans_br, SCV_p2_trans_br, SCV_p1_trans_br,...
    SCV0_trans_br, SCV_m1_trans_br, SCV_m2_trans_br, SCV_m3_trans_br, SCV_m5_trans_br, SCV_m10_trans_br); 
figure(200)
clf;
[ha, pos] = tight_subplot(1,11,[.01 .01],[.01 .01],[.03 .03]);

figure(201)
clf;
[ha, pos] = tight_subplot(1,11,[.01 .01],[.01 .01],[.03 .03]);

figure(202)
clf;
[ha, pos] = tight_subplot(1,11,[.01 .01],[.01 .01],[.03 .03]);

figure(205)
clf;
[ha, pos] = tight_subplot(1,11,[.001 .001],[.01 .01],[.03 .03]);

clear annie_br_tang_rot annie_br_scv_rot annie_br_fm_mult annie_br_m_er_dil_islandless annie_br_fm_mult_t
clear annie_br_fm_sum annie_br_fm_sum_t
clear val int

%
for k = 1:size(annie_br_scv_rot,3)
    annie_br_tang_rot_decon(:,:,k) = annie_br_Tang_decon;
    tang_im = annie_br_Tang_decon;
    
    annie_br_scv_rot_rs(:,:,k) = imresize(imrotate(imwarp(annie_br_scv_rot(:,:,k), tform_test), -7.6), size(TAN0_annie_br_trans));
    annie_br_scv_rot_decon(:,:,k) = deconvlucy(annie_br_scv_rot_rs(:,:,k), gaussian2D_annie_br_SCV, 1);
    scv_im = annie_br_scv_rot_decon(:,:,k);
    
    annie_br_fm_sum(:,:,k) = tang_im + scv_im;
    annie_br_fm_mult(:,:,k) = real(sqrt(tang_im.*scv_im));
    SE_dil = strel('disk', 10);
    SE_er = strel('disk', 10);
    annie_br_mask(:,:,k) = imdilate(imerode(imbinarize(annie_br_fm_mult(:,:,k), ...
        0.20*max(max(annie_br_fm_mult(:,:,k)))), SE_er), SE_dil);
    figure(1)
    imagesc(annie_br_mask(:,:,k))
    CC = bwconncomp(annie_br_mask(:,:,k));

    numPixels = cellfun(@numel,CC.PixelIdxList);
    [biggestSize,idx] = max(numPixels);

    BW2 = false(size(annie_br_mask(:,:,k)));
    BW2(CC.PixelIdxList{idx}) = true;
    clear annie_br_box
    annie_br_box  = regionprops(BW2,'Area', 'BoundingBox'); 
    clear annie_br_bb
    annie_br_bb = annie_br_box.BoundingBox;
    annie_br_Area(k) = annie_br_box.Area;
     
    figure(1)
    imagesc(annie_br_mask(:,:,k))
    ax=gca;
    h = images.roi.Rectangle(gca,'Position',[annie_br_bb(1), annie_br_bb(2), annie_br_bb(3), annie_br_bb(4)],...
        'StripeColor','r');
    
    annie_br_roi(:,:,k) = createMask(h);
    close

    figure(200)
    subplot('position', pos{k})
    imagesc(annie_br_roi(:,:,k))
    
    
    im = annie_br_fm_sum(:,:,k);
    annie_br_fm_sum_t(:,:,k) = imrotate(im.*annie_br_roi(:,:,k), 90);
    
    figure(201)
    subplot('position', pos{k})
    imagesc(annie_br_fm_sum_t(:,:,k)); colormap(jet);
    ax_fm(k) = gca;
    
    %now profiles
    annie_br_prof_tang = sum(imrotate(tang_im.*annie_br_roi(:,:,k), 90), 1);
    annie_br_prof_tang_norm(k,:) = annie_br_prof_tang./max(annie_br_prof_tang(:));
    annie_br_prof_scv = sum(imrotate(scv_im.*annie_br_roi(:,:,k), 90), 1);
    annie_br_prof_scv_norm(k,:) = annie_br_prof_scv./max(annie_br_prof_scv(:));
    annie_br_prof_total = annie_br_prof_tang + annie_br_prof_scv;
    annie_br_prof_total_norm(k,:) = annie_br_prof_tang_norm(k,:) + annie_br_prof_scv_norm(k,:);
    
    %now take the integrals.
    annie_br_Integral_total(k) = trapz([1:1:length(annie_br_prof_total_norm(k,:))].*0.13,...
        annie_br_prof_total_norm(k,:));
    
    figure(202)
    subplot('position', pos{k})
    plot([1:1:length(annie_br_prof_tang_norm(k,:))].*0.13, annie_br_prof_tang_norm(k,:), 'Linewidth', 3)
    hold on
    plot([1:1:length(annie_br_prof_scv_norm(k,:))].*0.13, annie_br_prof_scv_norm(k,:), 'Linewidth', 3)
    plot([1:1:length(annie_br_prof_total_norm(k,:))].*0.13, annie_br_prof_total_norm(k,:), 'color', 'black', 'Linewidth', 2)
    ax_fm_prof(k) = gca;
    ylim([0 1.4])
    
    %find the intersection point
    for i = 1:length(annie_br_prof_tang_norm)
        intersection_difference(k,i) = abs(annie_br_prof_tang_norm(k,i) - annie_br_prof_scv_norm(k,i));
    end
    
    diff_prof = intersection_difference(k,:);    
    diff_prof(diff_prof==0) = NaN;
    [int_val(k), int_idx(k)] = min(diff_prof);
    
    prof = annie_br_prof_tang_norm(k,:);
    prof_nn = annie_br_prof_tang;
    scatter(int_idx(k).*0.13, prof(int_idx(k)), 'LineWidth', 3, 'SizeData', 250);
    xlim([110 145])
    
    %spit out the intersection points
    annie_br_intersection_xvals(k) = int_idx(k).*0.13;
    annie_br_intersection_yvals(k) = prof(int_idx(k));
    
    figure(205)
    subplot('position', pos{k})
    imagesc(annie_br_fm_mult(:,:,k)); colormap(jet); caxis([0 4]); axis off;
    %hold on
    %rectangle('Position',[round(annie_br_bb(1)), round(annie_br_bb(2)), round(annie_br_bb(3)), round(annie_br_bb(4))], 'LineWidth', 2, 'EdgeColor','k');
    ax_sum(k) = gca;
end
linkaxes(ax_fm)
linkaxes(ax_fm_prof)
linkaxes(ax_sum)

% for k = 1:size(annie_br_tang,3)
%     figure(205)
%     subplot('position', pos{k})
%     imagesc(annie_br_fm_mult(:,:,k)); colormap(jet); caxis([0 3]); axis off;
%     hold on
%     rectangle('Position',round([annie_br_bb(1) annie_br_bb(2) annie_br_bb(3) annie_br_bb(4)]) , 'LineWidth', 2, 'EdgeColor','k');
%     ax_sum(k) = gca;
% end
%     
%find the standard deviation of the intersection points
annie_br_std_intersection_yvals = std(annie_br_intersection_yvals);
annie_br_mean_intersection_yvals = mean(annie_br_intersection_yvals);
annie_br_cov_intersection_yvals = annie_br_std_intersection_yvals/annie_br_mean_intersection_yvals;

%plotting of the area of only the match region binary mask
figure(129)
scatter(1:1:length(annie_br_Area),  annie_br_Area./max(annie_br_Area(6)), 'filled', 'SizeData', 150,...
    'MarkerFaceAlpha', 0.7)
ylim([0 1.2])
xlim([0 length(annie_br_Area) + 1])
axy = gca;
axy.FontSize = 18;
ylabel('Area Overlap - BB (Norm.)')
xlabel('Day (fx)')

figure(130)
scatter(1:1:length(annie_br_Integral_total),  annie_br_Integral_total./max(annie_br_Integral_total(6)), 'filled', 'SizeData', 150,...
    'MarkerFaceAlpha', 0.7)
ylim([0 1.2])
xlim([0 length(annie_br_Integral_total) + 1])
axy = gca;
axy.FontSize = 18;
ylabel('Integral - BB (Norm.)')
xlabel('Day (fx)')

% %intersection point plot. 
figure(131)
clf
scatter([-10 -5 -3 -2 -1 0 1 2 3 5 10],...
    annie_br_intersection_yvals./annie_br_intersection_yvals(6), 'filled', 'SizeData', 35, 'MarkerFaceAlpha', 0.5);
% ylim([0 1])
% xlim([0 2])
% annie_br_xpt_mean = mean(annie_br_intersection_xvals./max(annie_br_intersection_xvals));
% annie_br_ypt_mean = annie_br_mean_intersection_yvals;
% hold on
% viscircles([annie_br_xpt_mean, annie_br_ypt_mean] , 0.02);

%% extract out the same for the TP
annie_br_tang_tp = annie_br_registered_tp_LAO_6 + annie_br_registered_tp_LAO_10 + annie_br_registered_tp_RPO_6 + annie_br_registered_tp_RPO_10;
annie_br_scv_tp = annie_br_registered_tp_LAO_SCV + annie_br_registered_tp_RPO_SCV;

annie_br_tangtp_rot = imrotate(imwarp(annie_br_tang_tp, tform_test), -2);
tang_im = annie_br_tangtp_rot;

annie_br_scvtp_rot = imresize(imrotate(imwarp(annie_br_scv_tp, tform_test), -2), size(tang_im));
scv_im = annie_br_scvtp_rot;

annie_br_fm_sum_tp = tang_im + scv_im;
annie_br_fm_mult_tp = real(sqrt(tang_im.*scv_im));
SE_dil = strel('disk', 10);
SE_er = strel('disk', 10);
annie_br_mask_tp = imdilate(imerode(imbinarize(annie_br_fm_mult_tp, ...
    0.50*max(max(annie_br_fm_mult_tp))), SE_er), SE_dil);

CC = bwconncomp(annie_br_mask_tp);

numPixels = cellfun(@numel,CC.PixelIdxList);
[biggestSize,idx] = max(numPixels)

BW2 = false(size(annie_br_mask_tp));
BW2(CC.PixelIdxList{idx}) = true;
clear annie_br_box
annie_br_box_tp  = regionprops(BW2,'Area', 'BoundingBox');
annie_br_bb_tp = annie_br_box_tp.BoundingBox;
annie_br_Area_tp = annie_br_box_tp.Area;

figure(1)
imagesc(annie_br_mask_tp)
ax=gca;
h = images.roi.Rectangle(gca,'Position',[annie_br_bb_tp(1), annie_br_bb_tp(2), annie_br_bb_tp(3), annie_br_bb_tp(4)],...
    'StripeColor','r');

annie_br_roi_tp = createMask(h);
close

figure(300)
imagesc(annie_br_roi_tp)


im = annie_br_fm_sum_tp;
annie_br_fm_sum_t_tp = imrotate(im.*annie_br_roi_tp, 90);

figure(301)
imagesc(annie_br_fm_sum_t_tp); colormap(jet);
ax_fm(k) = gca;

%now profiles
annie_br_prof_tang_tp = sum(imrotate(tang_im.*annie_br_roi_tp, 90), 1);
annie_br_prof_tang_norm_tp = annie_br_prof_tang_tp./max(annie_br_prof_tang_tp(:));
annie_br_prof_scv_tp = sum(imrotate(scv_im.*annie_br_roi_tp, 90), 1);
annie_br_prof_scv_norm_tp = annie_br_prof_scv_tp./max(annie_br_prof_scv_tp(:));
annie_br_prof_total_tp = annie_br_prof_tang_tp + annie_br_prof_scv_tp;
annie_br_prof_total_norm_tp = annie_br_prof_tang_norm_tp + annie_br_prof_scv_norm_tp;

%now take the integrals.
annie_br_Integral_total_tp = trapz([1:1:length(annie_br_prof_total_norm_tp)].*0.13,...
    annie_br_prof_total_norm_tp);

figure(302)
clf
plot([1:1:length(annie_br_prof_tang_norm_tp)].*0.13, annie_br_prof_tang_norm_tp, 'Linewidth', 3)
hold on
plot([1:1:length(annie_br_prof_scv_norm_tp)].*0.13, annie_br_prof_scv_norm_tp, 'Linewidth', 3)
plot([1:1:length(annie_br_prof_total_norm_tp)].*0.13, annie_br_prof_total_norm_tp, 'color', 'black', 'Linewidth', 2)
ax_fm_prof(k) = gca;
ylim([0 1.4])

%find the intersection point
for i = 1:length(annie_br_prof_tang_norm)
    intersection_difference_tp(i) = abs(annie_br_prof_tang_norm_tp(i) - annie_br_prof_scv_norm_tp(i));
end

diff_prof_tp = intersection_difference_tp;
diff_prof_tp(diff_prof_tp==0) = NaN;
[int_val_tp, int_idx_tp] = min(diff_prof_tp);

prof_tp = annie_br_prof_tang_norm_tp;
prof_nn_tp = annie_br_prof_tang_tp;
%scatter(int_idx(k).*0.13, prof(int_idx(k)), 'LineWidth', 3, 'SizeData', 250);
%xlim([115 128])

%spit out the intersection points
annie_br_intersection_xval_tp= int_idx_tp.*0.13;
annie_br_intersection_yval_tp = prof(int_idx_tp);

figure(305)
clf
imagesc(annie_br_fm_mult_tp); colormap(jet); caxis([0 1]); axisf
hold on
rectangle('Position',[annie_br_bb_tp(1) annie_br_bb_tp(2) annie_br_bb_tp(3) annie_br_bb_tp(4)], 'LineWidth', 2, 'EdgeColor','k');
ax_sum(k) = gca;




