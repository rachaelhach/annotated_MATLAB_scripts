%% MRI CALIBRATION DATA
% read in first stack, Fat Supression MR Scan 
figure(1)
clf;
[ha pos] = tight_subplot(7,6, [0.0001 0.0001], [0.001 0.001], [0.001 0.001]);
cd('E:\Exp88_MRI_Cherenkov_Calibration\FATTY_PADDY_7_20_2020_FATTY_PADDY_7_20_2020\BREAST_LIBRARY_DOT_20200720_131219_108000\AX_T1_FS_0003')
FatSupFolder = dir('E:\Exp88_MRI_Cherenkov_Calibration\FATTY_PADDY_7_20_2020_FATTY_PADDY_7_20_2020\BREAST_LIBRARY_DOT_20200720_131219_108000\AX_T1_FS_0003');
for i = 3:42
    %clearvars -except surf_total testmask i ;
    % read in image
    filename = FatSupFolder(i).name;
    im = dicomread(filename);
    stack_fp_MRI(:,:,i) = double(im);
    subplot('position', pos{i-2})
    imagesc(rot90(stack_fp_MRI(:,:,i),1)); colormap('bone'); axis image; axis off; caxis([0 1e3]);
end
cumulative_fp_MRI = rot90(sum(stack_fp_MRI, 3),1);
figure(18)
imagesc(cumulative_fp_MRI); colormap('bone'); axis image; axis off; caxis([0 4e4]); colorbar; 
ax = gca;
ax.FontSize = 20;

%% no fat suppression
figure(2)
clf;
[ha pos] = tight_subplot(7,6, [0.0001 0.0001], [0.001 0.001], [0.001 0.001]);
cd('E:\Exp88_MRI_Cherenkov_Calibration\FATTY_PADDY_7_20_2020_FATTY_PADDY_7_20_2020\BREAST_LIBRARY_DOT_20200720_131219_108000\AX_T1_NO_FS_0004')
NoFatSupFolder = dir('E:\Exp88_MRI_Cherenkov_Calibration\FATTY_PADDY_7_20_2020_FATTY_PADDY_7_20_2020\BREAST_LIBRARY_DOT_20200720_131219_108000\AX_T1_NO_FS_0004');
for i = 3:42
    %clearvars -except surf_total testmask i ;
    % read in image
    filename = NoFatSupFolder(i).name;
    im = dicomread(filename);
    stack_fp_MRI_nfs(:,:,i) = double(im);
    subplot('position', pos{i-2})
    imagesc(rot90(stack_fp_MRI_nfs(:,:,i),1)); colormap('bone'); axis image; axis off; caxis([0 4.5e3]);
    
end
cumulative_fp_MRI_nfs = rot90(sum(stack_fp_MRI_nfs, 3),1);
figure(19)
imagesc(cumulative_fp_MRI_nfs); colormap('bone'); axis image; axis off; caxis([0 4e4]); colorbar; 
ax = gca;
ax.FontSize = 20;

%% T2 - weighted
figure(29)
clf;
[ha pos] = tight_subplot(5,5, [0.001 0.001], [0.01 0.01], [0.01 0.01]);

cd('E:\Exp88_MRI_Cherenkov_Calibration\FATTY_PADDY_7_20_2020_FATTY_PADDY_7_20_2020\BREAST_LIBRARY_DOT_20200720_131219_108000\T2_TSE_TRA_P2_0005')
T2Folder = dir('E:\Exp88_MRI_Cherenkov_Calibration\FATTY_PADDY_7_20_2020_FATTY_PADDY_7_20_2020\BREAST_LIBRARY_DOT_20200720_131219_108000\T2_TSE_TRA_P2_0005');
for i = 7:30
    %clearvars -except surf_total testmask i ;
    % read in image
    filename = T2Folder(i).name;
    im = dicomread(filename);
    stack_fp_MRI_t2(:,:,i) = double(im);
    subplot('position', pos{i-6})
    imagesc(rot90(stack_fp_MRI_t2(:,:,i),1)); colormap('bone'); axis image; axis off; caxis([0 4.5e3]);
    
end
cumulative_fp_MRI_t2 = rot90(sum(stack_fp_MRI_t2, 3),1);
figure(20)
imagesc(cumulative_fp_MRI_t2); colormap('bone'); axis image; axis off; caxis([0 4e4]); colorbar; 
ax = gca;
ax.FontSize = 20;

%% taking ROI's of MRI
for i = 1:9
    figure(9)
    imagesc(cumulative_fp_MRI_t2); axis image; axis off; 
    h = imellipse();
    m = createMask(h);
    roi = cumulative_fp_MRI_t2.*m;
    MRI_t2_means(i) = median(roi(roi~=0));
    clear roi
    roi = cumulative_fp_MRI_nfs.*m;
    MRI_t1_means_nfs(i) =  median(roi(roi~=0));
    clear roi
    roi = cumulative_fp_MRI.*m;
    MRI_t1_means_fs(i) =  median(roi(roi~=0));
end

%% Checkerboard
% registration for tp images 
cd('E:\Exp88_MRI_Cherenkov_Calibration\Checkerboard\2020-07-20 16-26-48-269')
% location_file = 'edge_location.txt';
im_checker = read_dovi('meas_s0_cam0.dovi');
im_check = sum(im_checker,3);
im_ch = uint8(double(im_checker)/2500 * 256);
figure(100)
imagesc(im_check)
h=imfreehand();
mask = createMask(h);
close
im_check2 = medfilt2(im_check.*mask, [5 5]);
[imagePoints,boardSize] = detectCheckerboardPoints(im_check2);
%[xpts ypts] = getpts();
xpts = imagePoints(:,1); ypts = imagePoints(:,2);
x_vect = (69/30).*[6 3 0 -3 -6]*100;
y_vect = (69/30).*[-7.5 -4.5 -1.5 1.5 4.5 7.5]*100;
[x_mat, y_mat] = meshgrid(x_vect, y_vect);
x_mat_t = x_mat';
y_mat_t = y_mat';
loc_real = [x_mat_t(:), y_mat_t(:)];
tform = fitgeotrans([xpts ypts], loc_real, 'projective');
figure(3)
imagesc(im_check2);
hold on;
line(xpts, ypts);
hold off;
figure(2)
It = imwarp(im_check2, tform);
figure(9)
imagesc(It)

%% Cherenkov
%cd('E:\Exp88_MRI_Cherenkov_Calibration\Cherenkov\2020-07-2016-20-59-390') % for PA
cd('E:\Exp88_MRI_Cherenkov_Calibration\Cherenkov\2020-07-20 16-20-08-410') % for AP
ckov_stack = read_dovi('meas_s1_cam0.dovi');
cumulative_ckov_stack = sum(ckov_stack, 3);
figure(23)
imagesc(cumulative_ckov_stack); caxis([0 1e5])
cumulative_ckov_trans = imwarp(cumulative_ckov_stack, tform);
cumulative_ckov_trans_rs = imresize(cumulative_ckov_trans, [round(size(cumulative_ckov_trans,1)./10), round(size(cumulative_ckov_trans,2)./10)]);
figure(9)
imagesc(cumulative_ckov_trans_rs); axis image; axis off; caxis([9e3 1.3e5])

%% taking ROI's of Cherenkov
roi = zeros(1784, 1844, 9);
Ckov_PA_means = [];
Ckov_AP_means = [];
for i = 1:9
    figure(9)
    imagesc(cumulative_ckov_trans_rs); axis image; axis off; 
    h = imellipse();
    m = createMask(h);
    im = cumulative_ckov_trans_rs.*m;
    roi(:,:,i) = im;
    Ckov_AP_means(i) = median(im(im~=0));
    clear im m
end

%% plot it
figure(140)
clf
scatter(MRI_t1_means_nfs, Ckov_AP_means, 'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5);
hold on
scatter(MRI_t1_means_fs, Ckov_AP_means, 'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5);
scatter(MRI_t2_means, Ckov_AP_means, 'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5);
axy = gca;
axy.FontSize = 18;
ylabel('Cherenkov Intensity')
xlabel('Proton Density')
ylim([0 1e5])
xlim([0 3e4])
legend('T1 - No Fat Suppression','T1 - Fat Suppression', 'T2')

%% Plotting only T1 FS like in the scans. 
[fit_MRI gof_MRI] = fit(MRI_t1_means_fs', Ckov_AP_means', 'exp1');
xspace = [0:1:2e4];
yspace_MR = fit_MRI.a*exp(fit_MRI.b.*xspace); 
figure(140)
clf
scatter(MRI_t1_means_fs, Ckov_AP_means, 'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5);
hold on
plot(xspace, yspace_MR, ':')
axy = gca;
axy.FontSize = 18;
ylabel('Cherenkov Intensity')
xlabel('MR Signal (T1 FS)')
ylim([0 1e5])
xlim([0.25e4 2e4])
legend('T1 - Fat Suppression', 'Fit')


%% plotted with zeroa
MRI_t1_means_nfs_z = [0 MRI_t1_means_nfs];
MRI_t2_means_z = [0 MRI_t2_means];
Ckov_AP_means_z = [0 Ckov_AP_means];
figure(141)
clf
scatter(MRI_t1_means_nfs_z, Ckov_AP_means_z, 'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5);
hold on
scatter(MRI_t2_means_z, Ckov_AP_means_z, 'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5);
xspace = [0:10:3.5e4];
[fittedmodel_t2_AP gof_t2_AP] = fit(MRI_t2_means_z', Ckov_AP_means_z', 'exp1');
yspace_t1_nfs = fittedmodel_t1_AP.a.*exp(fittedmodel_t1_AP.b.*xspace);
yspace_t2 = fittedmodel_t2_AP.a.*exp(fittedmodel_t2_AP.b.*xspace);
plot(xspace,yspace_t1_nfs, 'Color', [0.9290 0.6940 0.1250])
plot(xspace,yspace_t2, 'Color', [0.4940 0.1840 0.5560])
axy = gca;
axy.FontSize = 18;
ylabel('Cherenkov Intensity')
xlabel('Proton Energy')
ylim([0 1e5])
xlim([0 3.5e4])
legend('T1 - No Fat Suppression', 'T2 - Turbo Spin Echo')

%% add the patients to the calibrations
%PT32
for i = 1:size(Pt32_Ckov_DoseNorm_th_RPO6,3)
    im = Pt32_Ckov_DoseNorm_th_RPO6(:,:,i);
    Pt32_median_Ckov_DoseNorm_th_RPO6(i) = median(im(:), 'omitnan');
    im = Pt32_Ckov_DoseNorm_th_LAO6(:,:,i);
    Pt32_median_Ckov_DoseNorm_th_LAO6(i) =  median(im(:), 'omitnan');
    im = Pt32_Ckov_DoseNorm_th_RPO10(:,:,i);
    Pt32_median_Ckov_DoseNorm_th_RPO10(i) = median(im(:), 'omitnan');
    im = Pt32_Ckov_DoseNorm_th_LAO10(:,:,i);
    Pt32_median_Ckov_DoseNorm_th_LA10(i) =  median(im(:), 'omitnan');
end

%PT37
for i = 1:size(Pt37_Ckov_DoseNorm_th_RPO6,3)
    im = Pt37_Ckov_DoseNorm_th_RPO6(:,:,i);
    Pt37_median_Ckov_DoseNorm_th_RPO6(i) = median(im(:), 'omitnan');
    im = Pt37_Ckov_DoseNorm_th_LAO6(:,:,i);
    Pt37_median_Ckov_DoseNorm_th_LAO6(i) =  median(im(:), 'omitnan');
end

%PT39
for i = 1:size(Pt39_Ckov_DoseNorm_th_RPO6,3)
    im = Pt39_Ckov_DoseNorm_th_RPO6(:,:,i);
    Pt39_median_Ckov_DoseNorm_th_RPO6(i) = median(im(:), 'omitnan');
    im = Pt39_Ckov_DoseNorm_th_LAO6(:,:,i);
    Pt39_median_Ckov_DoseNorm_th_LAO6(i) =  median(im(:), 'omitnan');
    im = Pt39_Ckov_DoseNorm_th_RPO10(:,:,i);
    Pt39_median_Ckov_DoseNorm_th_RPO10(i) = median(im(:), 'omitnan');
    im = Pt39_Ckov_DoseNorm_th_LAO10(:,:,i);
    Pt39_median_Ckov_DoseNorm_th_LAO10(i) =  median(im(:), 'omitnan');
end

%PT40
for i = 1:size(Pt40_Ckov_DoseNorm_th_RPO6,3)
    im = Pt40_Ckov_DoseNorm_th_RPO6(:,:,i);
    Pt40_median_Ckov_DoseNorm_th_RPO6(i) = median(im(:), 'omitnan');
    im = Pt40_Ckov_DoseNorm_th_LAO6(:,:,i);
    Pt40_median_Ckov_DoseNorm_th_LAO6(i) =  median(im(:), 'omitnan');
end

%PT44
for i = 1:size(Pt44_Ckov_DoseNorm_th_RPO6,3)
    im = Pt44_Ckov_DoseNorm_th_RPO6(:,:,i);
    Pt44_median_Ckov_DoseNorm_th_RPO6(i) = median(im(:), 'omitnan');
    im = Pt44_Ckov_DoseNorm_th_LAO6(:,:,i);
    Pt44_median_Ckov_DoseNorm_th_LAO6(i) =  median(im(:), 'omitnan');
end

%PT56
for i = 1:size(Pt56_Ckov_DoseNorm_th_RPO6,3)
    im = Pt56_Ckov_DoseNorm_th_RPO6(:,:,i);
    Pt56_median_Ckov_DoseNorm_th_RPO6(i) = median(im(:), 'omitnan');
    im = Pt56_Ckov_DoseNorm_th_LAO6(:,:,i);
    Pt56_median_Ckov_DoseNorm_th_LAO6(i) =  median(im(:), 'omitnan');
end


%PT58
for i = 1:size(Pt58_Ckov_DoseNorm_th_RPO6,3)
    im = Pt58_Ckov_DoseNorm_th_RPO6(:,:,i);
    Pt58_median_Ckov_DoseNorm_th_RPO6(i) = median(im(:), 'omitnan');
    im = Pt58_Ckov_DoseNorm_th_LAO6(:,:,i);
    Pt58_median_Ckov_DoseNorm_th_LAO6(i) =  median(im(:), 'omitnan');
end

%PT59
for i = 1:size(Pt59_Ckov_DoseNorm_th_RPO6,3)
    im = Pt59_Ckov_DoseNorm_th_RPO6(:,:,i);
    Pt59_median_Ckov_DoseNorm_th_RPO6(i) = median(im(:), 'omitnan');
    im = Pt59_Ckov_DoseNorm_th_LAO6(:,:,i);
    Pt59_median_Ckov_DoseNorm_th_LAO6(i) =  median(im(:), 'omitnan');
    im = Pt59_Ckov_DoseNorm_th_RPO10(:,:,i);
    Pt59_median_Ckov_DoseNorm_th_RPO10(i) = median(im(:), 'omitnan');
    im = Pt59_Ckov_DoseNorm_th_LAO10(:,:,i);
    Pt59_median_Ckov_DoseNorm_th_LAO10(i) =  median(im(:), 'omitnan');
end

% taken from ckov_array_6X NATCOMMSOURCEFILE Workspace
% PT 32, 37, 39, 44, 56, 58, 59
pt_ckov_4MRI_cal_6X = [mean([Pt32_median_Ckov_DoseNorm_th_RPO6,...
    Pt32_median_Ckov_DoseNorm_th_LAO6]),...
    mean([Pt37_median_Ckov_DoseNorm_th_RPO6,...
    Pt37_median_Ckov_DoseNorm_th_LAO6]),...
    mean([Pt39_median_Ckov_DoseNorm_th_RPO6,...
    Pt39_median_Ckov_DoseNorm_th_LAO6]),...
    mean([Pt44_median_Ckov_DoseNorm_th_RPO6,...
    Pt44_median_Ckov_DoseNorm_th_LAO6]),...
    mean([Pt56_median_Ckov_DoseNorm_th_RPO6,...
    Pt56_median_Ckov_DoseNorm_th_LAO6]),...
    mean([Pt58_median_Ckov_DoseNorm_th_RPO6,...
    Pt58_median_Ckov_DoseNorm_th_LAO6]),...
    mean([Pt59_median_Ckov_DoseNorm_th_RPO6,...
    Pt59_median_Ckov_DoseNorm_th_LAO6])];

pt_T2_eclipse = [189, 71.2, 84.11, 289.7, 335.6, 47, 75.7];
pt_T2_eclipse = [159.94, 74.11, 95.25, 383.26, 368.83, 50.04, 75.98];

% figure(3)
% clf;
% scatter(MRI_t2_means, Ckov_AP_means./2.20, 'filled', 'SizeData', 150,...
%     'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5); %divide by 220 cGy for intensity/cGy
% hold on
% scatter(pt_T2_eclipse, pt_ckov_4MRI_cal_6X, 'filled', 'SizeData', 150,...
%     'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5);
% plot(xspace,yspace_t2/2.2, 'Color', [0.4940 0.1840 0.5560])
% axy = gca;
% axy.FontSize = 18;
% ylabel('Cherenkov Intensity')
% xlabel('Proton Density')
% ylim([0 6e4])
% xlim([0 3e4])
% 

% 
figure(13)
% scatter(MRI_t1_means_fs, Ckov_AP_means./2.20, 'filled', 'SizeData', 150,...
%     'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5); %divide by 220 cGy for intensity/cGy
% 
pt_T2_eclipse = [189, 71.2, 84.11, 289.7, 335.6, 47, 75.7]*50;
scatter(pt_T2_eclipse, pt_ckov_4MRI_cal_6X, 'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5);
xspace = [0:1:2e4];
[fittedmodel_pc gof_pc]= fit(pt_T2_eclipse', pt_ckov_4MRI_cal_6X', 'poly1')
yspace_MRI_pc =  fittedmodel_pc.p1*xspace+fittedmodel_fs.p2;
hold on
plot(xspace, yspace_MRI_pc)

axy = gca;
axy.FontSize = 18;
ylabel('Cherenkov Intensity')
xlabel('Proton Density')
ylim([0 6e4])
xlim([0 3e4])

figure(14)
clf;
HU_array_MRI_only = HU_array([3,6,7,9,11,12,13])
scatter(HU_array_MRI_only, pt_T2_eclipse, 'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5);
hold on
xspace_CT_MR_calcurve = [-105:0.1:-45];
yspace_CT_MRI_calcurve = fit_ct_MRI_cal.p1.*xspace_CT_MR_calcurve+ fit_ct_MRI_cal.p2;
plot(fit_ct_MRI_cal)
axy = gca;
axy.FontSize = 20;
ylabel('MRI - Proton Energy')
xlabel('CT Radiodensity (HU)')
ylim([0 375])
xlim([-105 -50])

[fit_pt_t2_ckov gof_pt_t2_ckov] = fit(pt_T2_eclipse', pt_ckov_4MRI_cal_6X', 'poly1');
figure(16)
clf;
scatter(pt_T2_eclipse(1), pt_ckov_4MRI_cal_6X(1),  'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5, 'MarkerFaceColor', rgb('DarkBlue'));
hold on
scatter(pt_T2_eclipse(2), pt_ckov_4MRI_cal_6X(2),  'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5, 'MarkerFaceColor', rgb('DarkGreen'));
scatter(pt_T2_eclipse(3), pt_ckov_4MRI_cal_6X(3),  'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5, 'MarkerFaceColor', rgb('DarkSlateGray'));
scatter(pt_T2_eclipse(4), pt_ckov_4MRI_cal_6X(4),  'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5, 'MarkerFaceColor', rgb('MediumSeaGreen'));
scatter(pt_T2_eclipse(5), pt_ckov_4MRI_cal_6X(5),  'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5, 'MarkerFaceColor', rgb('MediumPurple'));
scatter(pt_T2_eclipse(6), pt_ckov_4MRI_cal_6X(6),  'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5, 'MarkerFaceColor', rgb('DarkOliveGreen'));
scatter(pt_T2_eclipse(7), pt_ckov_4MRI_cal_6X(7),  'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5, 'MarkerFaceColor', rgb('CornflowerBlue'));
xspace_pt_MR_calcurve = [0:0.1:400];
yspace_pt_MRI_calcurve = fit_pt_t2_ckov.p1.*xspace_pt_MR_calcurve + fit_pt_t2_ckov.p2;
plot(xspace_pt_MR_calcurve, yspace_pt_MRI_calcurve, ':', 'Color', 'k')
axy = gca;
axy.FontSize = 20;
ylabel('Cherenkov Intensity (\gamma/Gy)')
xlabel('Proton Energy')
ylim([0 3e4])
xlim([0 400])

% taken from ckov_array_10X
pt_ckov_4MRI_cal_10X = [mean([Pt32_median_Ckov_DoseNorm_th_RPO10,...
    Pt32_median_Ckov_DoseNorm_th_LAO10]),...
    mean([Pt39_median_Ckov_DoseNorm_th_RPO6,...
    Pt39_median_Ckov_DoseNorm_th_LAO6]),...
    mean([Pt56_median_Ckov_DoseNorm_th_RPO6,...
    Pt59_median_Ckov_DoseNorm_th_LAO6])];
pt_T2_eclipse10 =[159.94 95.25 75.98];

% for 10X
[fit_pt_t2_ckov10 gof_pt_t2_ckov10] = fit(pt_T2_eclipse10', pt_ckov_4MRI_cal_10X', 'poly1');
figure(17)
clf;
scatter(pt_T2_eclipse10, pt_ckov_4MRI_cal_10X,  'filled', 'SizeData', 150,...
    'MarkerEdgeAlpha', 1, 'MarkerFaceAlpha', 0.5);
hold on
xspace_pt_MR_calcurve = [0:0.1:400];
yspace_pt_MRI_calcurve = fit_pt_t2_ckov10.p1.*xspace_pt_MR_calcurve + fit_pt_t2_ckov10.p2;
plot(xspace_pt_MR_calcurve, yspace_pt_MRI_calcurve)
axy = gca;
axy.FontSize = 18;
ylabel('Cherenkov Intensity')
xlabel('Proton Energy')
ylim([0 3e4])
xlim([0 400])
