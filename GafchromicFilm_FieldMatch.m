%read in a comma separated value table from excel
cd('C:\Users\hacha\Downloads')
Dose_Film = readmatrix('FM_2021_01_20.csv');
figure(11)
imagesc(Dose_Film); 

%%
%field match 0
fm_dosefilm_0 = imrotate(Dose_Film, -0.1);
figure(11)
imagesc(fm_dosefilm_0); axis off; caxis([0 300]);
fm_dosefilm_0_c = imcrop(fm_dosefilm_0, [741 696 332 122]);
figure(12)
imagesc(fm_dosefilm_0_c); caxis([0 300]); colorbar; colormap(cmap2);
axis image;
prof_dosefilm_0_cp = sum(fm_dosefilm_0_c, 2)/332;
figure(14)
plot(1:1:length(prof_dosefilm_0_cp), prof_dosefilm_0_cp)
ylim([0 300]); xlim([0 122]);


%field match_p1
fm_dosefilm_p1 = imrotate(Dose_Film, -0.1);
figure(11)
imagesc(fm_dosefilm_p1); axis off; caxis([0 300]);
fm_dosefilm_p1_c = imcrop(fm_dosefilm_p1, [1715 440 332 122]);
figure(12)
imagesc(fm_dosefilm_p1_c); caxis([0 300]); colorbar; colormap(cmap2);
axis image;
prof_dosefilm_p1_cp = sum(fm_dosefilm_p1_c, 2)/332;
figure(14)
plot(1:1:length(prof_dosefilm_p1_cp), prof_dosefilm_p1_cp)
ylim([0 300]); xlim([0 122]);


%field match_p2
fm_dosefilm_p2 = imrotate(Dose_Film, -0.0);
figure(11)
imagesc(fm_dosefilm_p2); axis off; caxis([0 300]);
fm_dosefilm_p2_c = imcrop(fm_dosefilm_p2, [1702 432 332 122]);
figure(12)
imagesc(fm_dosefilm_p2_c); caxis([0 300]); colorbar; colormap(cmap2);
axis image;
prof_dosefilm_p2_cp = sum(fm_dosefilm_p2_c, 2)/332;
figure(14)
plot(1:1:length(prof_dosefilm_p2_cp), prof_dosefilm_p2_cp)
ylim([0 300]); xlim([0 122]);


%field match_p3
fm_dosefilm_p3 = imrotate(Dose_Film, 1.1);
figure(11)
imagesc(fm_dosefilm_p3); axis off; caxis([0 300]);
fm_dosefilm_p3_c = imcrop(fm_dosefilm_p3, [2192 486 332 122]);
figure(12)
imagesc(fm_dosefilm_p3_c); caxis([0 300]); colorbar; colormap(cmap2);
axis image;
prof_dosefilm_p3_cp = sum(fm_dosefilm_p3_c, 2)/332;
figure(14)
plot(1:1:length(prof_dosefilm_p3_cp), prof_dosefilm_p3_cp)
ylim([0 300]); xlim([0 122]);


%field match_p5
fm_dosefilm_p5 = imrotate(Dose_Film, 1.0);
figure(11)
imagesc(fm_dosefilm_p5); axis off; caxis([0 300]);
fm_dosefilm_p5_c = imcrop(fm_dosefilm_p5, [2672 446 332 122]);
figure(12)
imagesc(fm_dosefilm_p5_c); caxis([0 300]); colorbar; colormap(cmap2);
axis image;
prof_dosefilm_p5_cp = sum(fm_dosefilm_p5_c, 2)/332;
figure(14)
plot(1:1:length(prof_dosefilm_p5_cp), prof_dosefilm_p5_cp)
ylim([0 300]); xlim([0 122]);


%field match_p10
fm_dosefilm_p10 = imrotate(Dose_Film, 1.0);
figure(11)
imagesc(fm_dosefilm_p10); axis off; caxis([0 300]);
fm_dosefilm_p10_c = imcrop(fm_dosefilm_p10, [3166 428 332 122]);
figure(12)
imagesc(fm_dosefilm_p10_c); caxis([0 300]); colorbar; colormap(cmap2);
axis image;
prof_dosefilm_p10_cp = sum(fm_dosefilm_p10_c, 2)/332;
figure(14)
plot(1:1:length(prof_dosefilm_p10_cp), prof_dosefilm_p10_cp)
ylim([0 300]); xlim([0 122]);


%% minus

%field match_m1
fm_dosefilm_m1 = imrotate(Dose_Film, -0.4);
figure(11)
imagesc(fm_dosefilm_m1); axis off; caxis([0 300]);
fm_dosefilm_m1_c = imcrop(fm_dosefilm_m1, [1214 708 332 122]);
figure(12)
imagesc(fm_dosefilm_m1_c); caxis([0 300]); colorbar; colormap(cmap2);
axis image;
prof_dosefilm_m1_cp = sum(fm_dosefilm_m1_c, 2)/332;
figure(14)
plot(1:1:length(prof_dosefilm_m1_cp), prof_dosefilm_m1_cp)
ylim([0 300]); xlim([0 122]);


%field match_m2
fm_dosefilm_m2 = imrotate(Dose_Film, 0.5);
figure(11)
imagesc(fm_dosefilm_m2); axis off; caxis([0 300]);
fm_dosefilm_m2_c = imcrop(fm_dosefilm_m2, [1715 716 332 122]);
figure(12)
imagesc(fm_dosefilm_m2_c); caxis([0 300]); colorbar; colormap(cmap2);
axis image;
prof_dosefilm_m2_cp = sum(fm_dosefilm_m2_c, 2)/332;
figure(14)
plot(1:1:length(prof_dosefilm_m2_cp), prof_dosefilm_m2_cp)
ylim([0 300]); xlim([0 122]);


%field match_m3
fm_dosefilm_m3 = imrotate(Dose_Film, 0.5);
figure(11)
imagesc(fm_dosefilm_m3); axis off; caxis([0 300]);
fm_dosefilm_m3_c = imcrop(fm_dosefilm_m3, [2185 720 332 122]);
figure(12)
imagesc(fm_dosefilm_m3_c); caxis([0 300]); colorbar; colormap(cmap2);
axis image;
prof_dosefilm_m3_cp = sum(fm_dosefilm_m3_c, 2)/332;
figure(14)
plot(1:1:length(prof_dosefilm_m3_cp), prof_dosefilm_m3_cp)
ylim([0 300]); xlim([0 122]);



%field match_m5
fm_dosefilm_m5 = imrotate(Dose_Film, -0.9);
figure(11)
imagesc(fm_dosefilm_m5); axis off; caxis([0 300]);
fm_dosefilm_m5_c = imcrop(fm_dosefilm_m5, [2693 736 332 122]);
figure(12)
imagesc(fm_dosefilm_m5_c); caxis([0 300]); colorbar; colormap(cmap2);
axis image;
prof_dosefilm_m5_cp = sum(fm_dosefilm_m5_c, 2)/332;
figure(14)
plot(1:1:length(prof_dosefilm_m5_cp), prof_dosefilm_m5_cp)
ylim([0 300]); xlim([0 122]);



%field match_m10
fm_dosefilm_m10 = imrotate(Dose_Film, -0.9);
figure(11)
imagesc(fm_dosefilm_m10); axis off; caxis([0 300]);
fm_dosefilm_m10_c = imcrop(fm_dosefilm_m10, [3155 760 332 122]);
figure(12)
imagesc(fm_dosefilm_m10_c); caxis([0 300]); colorbar; colormap(cmap2);
axis image;
prof_dosefilm_m10_cp = sum(fm_dosefilm_m10_c, 2)/332;
figure(14)
plot(1:1:length(prof_dosefilm_m10_cp), prof_dosefilm_m10_cp)
ylim([0 300]); xlim([0 122]);


%%
figure(201)
clf;
[ha pos] = tight_subplot(2, 6, [0.05 0.05], [0.05 0.05], [0.05 0.05]);
subplot('Position', pos{1})
plot(1:1:length(prof_dosefilm_0_cp), prof_dosefilm_0_cp)
ylim([0 400]); xlim([0 122]);
subplot('Position', pos{2})
plot(1:1:length(prof_dosefilm_p1_cp), prof_dosefilm_p1_cp)
ylim([0 400]); xlim([0 122]);
subplot('Position', pos{3})
plot(1:1:length(prof_dosefilm_p2_cp), prof_dosefilm_p2_cp)
ylim([0 400]); xlim([0 122]);
subplot('Position', pos{4})
plot(1:1:length(prof_dosefilm_p3_cp), prof_dosefilm_p3_cp)
ylim([0 400]); xlim([0 122]);
subplot('Position', pos{5})
plot(1:1:length(prof_dosefilm_p5_cp), prof_dosefilm_p5_cp)
ylim([0 400]); xlim([0 122]);
subplot('Position', pos{6})
plot(1:1:length(prof_dosefilm_p10_cp), prof_dosefilm_p10_cp)
ylim([0 400]); xlim([0 122]);

subplot('Position', pos{7})
plot(1:1:length(prof_dosefilm_0_cp), prof_dosefilm_0_cp)
ylim([0 400]); xlim([0 122]);
subplot('Position', pos{8})
plot(1:1:length(prof_dosefilm_m1_cp), prof_dosefilm_m1_cp)
ylim([0 400]); xlim([0 122]);
subplot('Position', pos{9})
plot(1:1:length(prof_dosefilm_m2_cp), prof_dosefilm_m2_cp)
ylim([0 400]); xlim([0 122]);
subplot('Position', pos{10})
plot(1:1:length(prof_dosefilm_m3_cp), prof_dosefilm_m3_cp)
ylim([0 400]); xlim([0 122]);
subplot('Position', pos{11})
plot(1:1:length(prof_dosefilm_m5_cp), prof_dosefilm_m5_cp)
ylim([0 400]); xlim([0 122]);
subplot('Position', pos{12})
plot(1:1:length(prof_dosefilm_m10_cp), prof_dosefilm_m10_cp)
ylim([0 400]); xlim([0 122]);

fm_array = [-10 -5 -3 -2 -1 0 1 2 3 5 10];
df_peaks = 100*([38.15, 54.12, 77.38, 84.99, 120.8, 169, 205.8, 238.9, 247.9, 284.3, 302.9] - 169)./169;
%df_peaks = 100*([119, 151.8, 182.1, 186.3, 239.9 281.5 286.8 311.7 354.1 366.6 372.9] - 281.5)./281.5;
figure(6); clf;
scatter(fm_array, df_peaks, 'filled')
xspace_fm_array = [-11:0.01:11];
df_fit_yspace = erffit.a*erf(erffit.b*xspace_fm_array);
df_fit_yspace_0 = -1.87;
df_peaks2 = (100*([38.15, 54.12, 77.38, 84.99, 120.8, 169, 205.8, 238.9, 247.9, 284.3, 302.9] - 169)./169) - df_fit_yspace_0; 
hold on
plot(xspace_fm_array, df_fit_yspace)
xlim([-11 11]); ylim([-100 100]); ax = gca; ax.FontSize = 16;

figure(202)
clf;
[ha pos] = tight_subplot(4, 6, [0.05 0.05], [0.05 0.05], [0.05 0.05]);
subplot('Position', pos{1})
imagesc(imrotate(fm_dosefilm_0_c,90)); caxis([0 340]); colormap(cmap2); axis off; 
subplot('Position', pos{2})
imagesc(imrotate(fm_dosefilm_p1_c,90)); caxis([0 340]); colormap(cmap2); axis off; 
subplot('Position', pos{3})
imagesc(imrotate(fm_dosefilm_p2_c,90)); caxis([0 340]); colormap(cmap2); axis off; 
subplot('Position', pos{4})
imagesc(imrotate(fm_dosefilm_p3_c,90)); caxis([0 340]); colormap(cmap2); axis off; 
subplot('Position', pos{5})
imagesc(imrotate(fm_dosefilm_p5_c,90)); caxis([0 340]); colormap(cmap2); axis off; 
subplot('Position', pos{6})
imagesc(imrotate(fm_dosefilm_p10_c,90)); caxis([0 340]); colormap(cmap2); axis off; 
subplot('Position', pos{13})
imagesc(imrotate(fm_dosefilm_0_c,90)); caxis([0 340]); colormap(cmap2); axis off; 
subplot('Position', pos{14})
imagesc(imrotate(fm_dosefilm_m1_c,90)); caxis([0 340]); colormap(cmap2); axis off; 
subplot('Position', pos{15})
imagesc(imrotate(fm_dosefilm_m2_c,90)); caxis([0 340]); colormap(cmap2); axis off; 
subplot('Position', pos{16})
imagesc(imrotate(fm_dosefilm_m3_c,90)); caxis([0 340]); colormap(cmap2); axis off; 
subplot('Position', pos{17})
imagesc(imrotate(fm_dosefilm_m5_c,90)); caxis([0 340]); colormap(cmap2); axis off;  
subplot('Position', pos{18})
imagesc(imrotate(fm_dosefilm_m10_c,90)); caxis([0 340]); colormap(cmap2); axis off; 

subplot('Position', pos{7})
plot(1:1:length(prof_dosefilm_0_cp), prof_dosefilm_0_cp, 'Linewidth', 2, 'Color', 'k'); ylim([0 400]); xlim([0 122]); 
subplot('Position', pos{8})
plot(1:1:length(prof_dosefilm_p1_cp), prof_dosefilm_p1_cp, 'Linewidth', 2, 'Color', 'k'); ylim([0 400]); xlim([0 122]); 
subplot('Position', pos{9})
plot(1:1:length(prof_dosefilm_p2_cp), prof_dosefilm_p2_cp, 'Linewidth', 2, 'Color', 'k'); ylim([0 400]); xlim([0 122]); 
subplot('Position', pos{10})
plot(1:1:length(prof_dosefilm_p3_cp), prof_dosefilm_p3_cp, 'Linewidth', 2, 'Color', 'k'); ylim([0 400]); xlim([0 122]); 
subplot('Position', pos{11})
plot(1:1:length(prof_dosefilm_p5_cp), prof_dosefilm_p5_cp, 'Linewidth', 2, 'Color', 'k'); ylim([0 400]); xlim([0 122]); 
subplot('Position', pos{12})
plot(1:1:length(prof_dosefilm_p10_cp), prof_dosefilm_p10_cp, 'Linewidth', 2, 'Color', 'k'); ylim([0 400]); xlim([0 122]); 
subplot('Position', pos{19})
plot(1:1:length(prof_dosefilm_0_cp), prof_dosefilm_0_cp, 'Linewidth', 2, 'Color', 'k'); ylim([0 400]); xlim([0 122]); 
subplot('Position', pos{20})
plot(1:1:length(prof_dosefilm_m1_cp), prof_dosefilm_m1_cp, 'Linewidth', 2, 'Color', 'k'); ylim([0 400]); xlim([0 122]); 
subplot('Position', pos{21})
plot(1:1:length(prof_dosefilm_m2_cp), prof_dosefilm_m2_cp, 'Linewidth', 2, 'Color', 'k'); ylim([0 400]); xlim([0 122]); 
subplot('Position', pos{22})
plot(1:1:length(prof_dosefilm_m3_cp), prof_dosefilm_m3_cp, 'Linewidth', 2, 'Color', 'k'); ylim([0 400]); xlim([0 122]); 
subplot('Position', pos{23})
plot(1:1:length(prof_dosefilm_m5_cp), prof_dosefilm_m5_cp, 'Linewidth', 2, 'Color', 'k'); ylim([0 400]); xlim([0 122]); 
subplot('Position', pos{24})
plot(1:1:length(prof_dosefilm_m10_cp), prof_dosefilm_m10_cp, 'Linewidth', 2, 'Color', 'k'); ylim([0 400]); xlim([0 122]); 








