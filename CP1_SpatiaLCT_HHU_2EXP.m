clear pt30_ckov_corr_2EXP_LAO6 pt31_ckov_corr_2EXP_LAO6 pt32_ckov_corr_2EXP_LAO6 pt35_ckov_corr_2EXP_LAO6
clear pt36_ckov_corr_2EXP_LAO6 pt37_ckov_corr_2EXP_LAO6 pt39_ckov_corr_2EXP_LAO6 pt41_ckov_corr_2EXP_LAO6
clear pt44_ckov_corr_2EXP_LAO6 pt45_ckov_corr_2EXP_LAO6 pt56_ckov_corr_2EXP_LAO6 pt58_ckov_corr_2EXP_LAO6
clear pt59_ckov_corr_2EXP_LAO6

clear pt30_ckov_corr_2EXP_RPO6 pt31_ckov_corr_2EXP_RPO6 pt32_ckov_corr_2EXP_RPO6 pt35_ckov_corr_2EXP_RPO6
clear pt36_ckov_corr_2EXP_RPO6 pt37_ckov_corr_2EXP_RPO6 pt39_ckov_corr_2EXP_RPO6 pt41_ckov_corr_2EXP_RPO6
clear pt44_ckov_corr_2EXP_RPO6 pt45_ckov_corr_2EXP_RPO6 pt56_ckov_corr_2EXP_RPO6 pt58_ckov_corr_2EXP_RPO6
clear pt59_ckov_corr_2EXP_RPO6

clear pt32_ckov_corr_2EXP_RPO10 pt39_ckov_corr_2EXP_RPO10 pt41_ckov_corr_2EXP_RPO10 pt45_ckov_corr_2EXP_RPO10 
clear pt59_ckov_corr_2EXP_RPO10

clear pt32_ckov_corr_2EXP_LAO10 pt39_ckov_corr_2EXP_LAO10 pt41_ckov_corr_2EXP_LAO10 pt45_ckov_corr_2EXP_LAO10 
clear pt59_ckov_corr_2EXP_LAO10

% DOING THE ONE STEP DOUBLE EXPONENTIAL BOTH 6X AND 10X
figure(1); clf;
[ha, pos] = tight_subplot(2,7,[.001 .001],[.01 .01],[.01 .01]);
figure(2); clf;
[ha, pos] = tight_subplot(2,7,[.001 .001],[.01 .01],[.01 .01]);

ckov_135HU_6_2EXP = fit_6_2EXP.a*exp(fit_6_2EXP.b*(-135)) + fit_6_2EXP.c*exp(fit_6_2EXP.d*(-135));

%patient 30
pt30_HUcorr_2EXP_RPO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt30_CT_HU_Map_RPO_3)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt30_CT_HU_Map_RPO_3)));
pt30_ckov_corr_2EXP_RPO6 = medfilt2(Pt30_Ckov_DoseNorm_th_c_RPO(:,:,2).*pt30_HUcorr_2EXP_RPO6, [5 5]);
pt30_HUcorr_2EXP_LAO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt30_CT_HU_Map_LAO_3)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt30_CT_HU_Map_LAO_3)));
pt30_ckov_corr_2EXP_LAO6 = medfilt2(Pt30_Ckov_DoseNorm_th_c_LAO(:,:,2).*pt30_HUcorr_2EXP_LAO6, [5 5]);
figure(1)
subplot('Position', pos{1})
imagesc(pt30_ckov_corr_2EXP_RPO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(2)
subplot('Position', pos{1})
imagesc(pt30_ckov_corr_2EXP_LAO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;

%patient 31
pt31_HUcorr_2EXP_RPO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt31_CT_HU_Map_RPO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt31_CT_HU_Map_RPO)));
pt31_ckov_corr_2EXP_RPO6 = medfilt2(Pt31_Ckov_DoseNorm_th_c_RPO(:,:,1).*pt31_HUcorr_2EXP_RPO6, [5 5]);
pt31_HUcorr_2EXP_LAO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt31_CT_HU_Map_LAO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt31_CT_HU_Map_LAO)));
pt31_ckov_corr_2EXP_LAO6 = medfilt2(Pt31_Ckov_DoseNorm_th_c_LAO(:,:,1).*pt31_HUcorr_2EXP_LAO6, [5 5]);
figure(1)
subplot('Position', pos{2})
imagesc(pt31_ckov_corr_2EXP_RPO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(2)
subplot('Position', pos{2})
imagesc(pt31_ckov_corr_2EXP_LAO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;


%patient 32
pt32_HUcorr_2EXP_RPO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt32_CT_HU_Map_RPO_3)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt32_CT_HU_Map_RPO_3)));
pt32_ckov_corr_2EXP_RPO6 = medfilt2(Pt32_Ckov_DoseNorm_th_c_RPO_6(:,:,2).*pt32_HUcorr_2EXP_RPO6, [5 5]);
pt32_HUcorr_2EXP_LAO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt32_CT_HU_Map_LAO_3)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt32_CT_HU_Map_LAO_3)));
pt32_ckov_corr_2EXP_LAO6 = medfilt2(Pt32_Ckov_DoseNorm_th_c_LAO_6(:,:,2).*pt32_HUcorr_2EXP_LAO6, [5 5]);
figure(1)
subplot('Position', pos{3})
imagesc(pt32_ckov_corr_2EXP_RPO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(2)
subplot('Position', pos{3})
imagesc(pt32_ckov_corr_2EXP_LAO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;


%patient 35
pt35_HUcorr_2EXP_RPO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt35_CT_HU_Map_RPO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt35_CT_HU_Map_RPO)));
pt35_ckov_corr_2EXP_RPO6 = medfilt2(Pt35_Ckov_DoseNorm_th_c_RPO(:,:,2).*pt35_HUcorr_2EXP_RPO6, [5 5]);
pt35_HUcorr_2EXP_LAO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt35_CT_HU_Map_LAO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt35_CT_HU_Map_LAO)));
pt35_ckov_corr_2EXP_LAO6 = medfilt2(Pt35_Ckov_DoseNorm_th_c_LAO(:,:,2).*pt35_HUcorr_2EXP_LAO6, [5 5]);
figure(1)
subplot('Position', pos{4})
imagesc(pt35_ckov_corr_2EXP_RPO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(2)
subplot('Position', pos{4})
imagesc(pt35_ckov_corr_2EXP_LAO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;


%patient 36
pt36_HUcorr_2EXP_RPO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt36_CT_HU_Map_RPO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt36_CT_HU_Map_RPO)));
pt36_ckov_corr_2EXP_RPO6 = medfilt2(Pt36_Ckov_DoseNorm_th_c_RPO(:,:,2).*pt36_HUcorr_2EXP_RPO6, [5 5]);
pt36_HUcorr_2EXP_LAO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt36_CT_HU_Map_LAO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt36_CT_HU_Map_LAO)));
pt36_ckov_corr_2EXP_LAO6 = medfilt2(Pt36_Ckov_DoseNorm_th_c_LAO(:,:,2).*pt36_HUcorr_2EXP_LAO6, [5 5]);
figure(1)
subplot('Position', pos{5})
imagesc(pt36_ckov_corr_2EXP_RPO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(2)
subplot('Position', pos{5})
imagesc(pt36_ckov_corr_2EXP_LAO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;


%patient 37
pt37_HUcorr_2EXP_RPO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt37_CT_HU_Map_RPO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt37_CT_HU_Map_RPO)));
pt37_ckov_corr_2EXP_RPO6 = medfilt2(Pt37_Ckov_DoseNorm_th_c_RPO(:,:,1).*pt37_HUcorr_2EXP_RPO6, [5 5]);
pt37_HUcorr_2EXP_LAO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt37_CT_HU_Map_LAO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt37_CT_HU_Map_LAO)));
pt37_ckov_corr_2EXP_LAO6 = medfilt2(Pt37_Ckov_DoseNorm_th_c_LAO(:,:,1).*pt37_HUcorr_2EXP_LAO6, [5 5]);
figure(1)
subplot('Position', pos{6})
imagesc(pt37_ckov_corr_2EXP_RPO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(2)
subplot('Position', pos{6})
imagesc(pt37_ckov_corr_2EXP_LAO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;


%patient 39
pt39_HUcorr_2EXP_RPO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt39_CT_HU_Map_RPO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt39_CT_HU_Map_RPO)));
pt39_ckov_corr_2EXP_RPO6 = medfilt2(Pt39_Ckov_DoseNorm_th_c_RPO_6(:,:,1).*pt39_HUcorr_2EXP_RPO6, [5 5]);
pt39_HUcorr_2EXP_LAO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt39_CT_HU_Map_LAO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt39_CT_HU_Map_LAO)));
pt39_ckov_corr_2EXP_LAO6 = medfilt2(Pt39_Ckov_DoseNorm_th_c_LAO_6(:,:,1).*pt39_HUcorr_2EXP_LAO6, [5 5]);
figure(1)
subplot('Position', pos{7})
imagesc(pt39_ckov_corr_2EXP_RPO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(2)
subplot('Position', pos{7})
imagesc(pt39_ckov_corr_2EXP_LAO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;

%patient 41
pt41_HUcorr_2EXP_RPO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt41_CT_HU_Map_RPO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt41_CT_HU_Map_RPO)));
pt41_ckov_corr_2EXP_RPO6 = medfilt2(Pt41_Ckov_DoseNorm_th_c_RPO_6(:,:,1).*pt41_HUcorr_2EXP_RPO6, [5 5]);
pt41_HUcorr_2EXP_LAO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt41_CT_HU_Map_LAO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt41_CT_HU_Map_LAO)));
pt41_ckov_corr_2EXP_LAO6 = medfilt2(Pt41_Ckov_DoseNorm_th_c_LAO_6(:,:,1).*pt41_HUcorr_2EXP_LAO6, [5 5]);
figure(1)
subplot('Position', pos{8})
imagesc(pt41_ckov_corr_2EXP_RPO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(2)
subplot('Position', pos{8})
imagesc(pt41_ckov_corr_2EXP_LAO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;



%patient 44
pt44_HUcorr_2EXP_RPO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt44_CT_HU_Map_RPO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt44_CT_HU_Map_RPO)));
pt44_ckov_corr_2EXP_RPO6 = medfilt2(Pt44_Ckov_DoseNorm_th_c_RPO(:,:,1).*pt44_HUcorr_2EXP_RPO6, [5 5]);
pt44_HUcorr_2EXP_LAO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt44_CT_HU_Map_LAO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt44_CT_HU_Map_LAO)));
pt44_ckov_corr_2EXP_LAO6 = medfilt2(Pt44_Ckov_DoseNorm_th_c_LAO(:,:,1).*pt44_HUcorr_2EXP_LAO6, [5 5]);
figure(1)
subplot('Position', pos{9})
imagesc(pt44_ckov_corr_2EXP_RPO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(2)
subplot('Position', pos{9})
imagesc(pt44_ckov_corr_2EXP_LAO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;


%patient 45
pt45_HUcorr_2EXP_RPO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt45_CT_HU_Map_RPO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt45_CT_HU_Map_RPO)));
pt45_ckov_corr_2EXP_RPO6 = medfilt2(Pt45_Ckov_DoseNorm_th_c_RPO_6(:,:,1).*pt45_HUcorr_2EXP_RPO6, [5 5]);
pt45_HUcorr_2EXP_LAO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt45_CT_HU_Map_LAO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt45_CT_HU_Map_LAO)));
pt45_ckov_corr_2EXP_LAO6 = medfilt2(Pt45_Ckov_DoseNorm_th_c_LAO_6(:,:,1).*pt45_HUcorr_2EXP_LAO6, [5 5]);
figure(1)
subplot('Position', pos{10})
imagesc(pt45_ckov_corr_2EXP_RPO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(2)
subplot('Position', pos{10})
imagesc(pt45_ckov_corr_2EXP_LAO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;



%patient 56
pt56_HUcorr_2EXP_RPO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt56_CT_HU_Map_RPO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt56_CT_HU_Map_RPO)));
pt56_ckov_corr_2EXP_RPO6 = medfilt2(Pt56_Ckov_DoseNorm_th_c_RPO(:,:,1).*pt56_HUcorr_2EXP_RPO6, [5 5]);
pt56_HUcorr_2EXP_LAO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt56_CT_HU_Map_LAO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt56_CT_HU_Map_LAO)));
pt56_ckov_corr_2EXP_LAO6 = medfilt2(Pt56_Ckov_DoseNorm_th_c_LAO(:,:,1).*pt56_HUcorr_2EXP_LAO6, [5 5]);
figure(1)
subplot('Position', pos{11})
imagesc(pt56_ckov_corr_2EXP_RPO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(2)
subplot('Position', pos{11})
imagesc(pt56_ckov_corr_2EXP_LAO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;


%patient 58
pt58_HUcorr_2EXP_RPO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt58_CT_HU_Map_RPO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt58_CT_HU_Map_RPO)));
pt58_ckov_corr_2EXP_RPO6 = medfilt2(Pt58_Ckov_DoseNorm_th_c_RPO(:,:,1).*pt58_HUcorr_2EXP_RPO6, [5 5]);
pt58_HUcorr_2EXP_LAO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt58_CT_HU_Map_LAO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt58_CT_HU_Map_LAO)));
pt58_ckov_corr_2EXP_LAO6 = medfilt2(Pt58_Ckov_DoseNorm_th_c_LAO(:,:,1).*pt58_HUcorr_2EXP_LAO6, [5 5]);
figure(1)
subplot('Position', pos{12})
imagesc(pt58_ckov_corr_2EXP_RPO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(2)
subplot('Position', pos{12})
imagesc(pt58_ckov_corr_2EXP_LAO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;


%patient 59
pt59_HUcorr_2EXP_RPO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt59_CT_HU_Map_RPO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt59_CT_HU_Map_RPO)));
pt59_ckov_corr_2EXP_RPO6 = medfilt2(Pt59_Ckov_DoseNorm_th_c_RPO_6(:,:,1).*pt59_HUcorr_2EXP_RPO6, [5 5]);
pt59_HUcorr_2EXP_LAO6 = ckov_135HU_6_2EXP./...
    (fit_6_2EXP.a*exp(fit_6_2EXP.b.*(Pt59_CT_HU_Map_LAO)) + fit_6_2EXP.c*exp(fit_6_2EXP.d.*(Pt59_CT_HU_Map_LAO)));
pt59_ckov_corr_2EXP_LAO6 = medfilt2(Pt59_Ckov_DoseNorm_th_c_LAO_6(:,:,1).*pt59_HUcorr_2EXP_LAO6, [5 5]);
figure(1)
subplot('Position', pos{13})
imagesc(pt59_ckov_corr_2EXP_RPO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(2)
subplot('Position', pos{13})
imagesc(pt59_ckov_corr_2EXP_LAO6); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;

%% NOW 10X

figure(3); clf;
[ha, pos] = tight_subplot(1,5,[.001 .001],[.01 .01],[.01 .01]);
figure(4); clf;
[ha, pos] = tight_subplot(1,5,[.001 .001],[.01 .01],[.01 .01]);

ckov_135HU_10_2EXP = fit_10_2EXP.a*exp(fit_10_2EXP.b*(-135)) + fit_10_2EXP.c*exp(fit_10_2EXP.d*(-135));

%patient 32
pt32_HUcorr_2EXP_RPO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt32_CT_HU_Map_RPO_3)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt32_CT_HU_Map_RPO_3)));
pt32_ckov_corr_2EXP_RPO10 = medfilt2(Pt32_Ckov_DoseNorm_th_c_RPO_10(:,:,1).*pt32_HUcorr_2EXP_RPO10, [5 5]);
pt32_HUcorr_2EXP_LAO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt32_CT_HU_Map_LAO_3)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt32_CT_HU_Map_LAO_3)));
pt32_ckov_corr_2EXP_LAO10 = medfilt2(Pt32_Ckov_DoseNorm_th_c_LAO_10(:,:,1).*pt32_HUcorr_2EXP_LAO10, [5 5]);
figure(3)
subplot('Position', pos{1})
imagesc(pt32_ckov_corr_2EXP_RPO10); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(4)
subplot('Position', pos{1})
imagesc(pt32_ckov_corr_2EXP_LAO10); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;


%patient 39
pt39_HUcorr_2EXP_RPO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt39_CT_HU_Map_RPO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt39_CT_HU_Map_RPO)));
pt39_ckov_corr_2EXP_RPO10 = medfilt2(Pt39_Ckov_DoseNorm_th_c_RPO_10(:,:,1).*pt39_HUcorr_2EXP_RPO10, [5 5]);
pt39_HUcorr_2EXP_LAO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt39_CT_HU_Map_LAO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt39_CT_HU_Map_LAO)));
pt39_ckov_corr_2EXP_LAO10 = medfilt2(Pt39_Ckov_DoseNorm_th_c_LAO_10(:,:,1).*pt39_HUcorr_2EXP_LAO10, [5 5]);
figure(3)
subplot('Position', pos{2})
imagesc(pt39_ckov_corr_2EXP_RPO10); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(4)
subplot('Position', pos{2})
imagesc(pt39_ckov_corr_2EXP_LAO10); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;


%patient 41
pt41_HUcorr_2EXP_RPO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt41_CT_HU_Map_RPO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt41_CT_HU_Map_RPO)));
pt41_ckov_corr_2EXP_RPO10 = medfilt2(Pt41_Ckov_DoseNorm_th_c_RPO_10(:,:,1).*pt41_HUcorr_2EXP_RPO10, [5 5]);
pt41_HUcorr_2EXP_LAO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt41_CT_HU_Map_LAO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt41_CT_HU_Map_LAO)));
pt41_ckov_corr_2EXP_LAO10 = medfilt2(Pt41_Ckov_DoseNorm_th_c_LAO_10(:,:,1).*pt41_HUcorr_2EXP_LAO10, [5 5]);
figure(3)
subplot('Position', pos{3})
imagesc(pt41_ckov_corr_2EXP_RPO10); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(4)
subplot('Position', pos{3})
imagesc(pt41_ckov_corr_2EXP_LAO10); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;


%patient 45
pt45_HUcorr_2EXP_RPO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt45_CT_HU_Map_RPO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt45_CT_HU_Map_RPO)));
pt45_ckov_corr_2EXP_RPO10 = medfilt2(Pt45_Ckov_DoseNorm_th_c_RPO_10(:,:,1).*pt45_HUcorr_2EXP_RPO10, [5 5]);
pt45_HUcorr_2EXP_LAO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt45_CT_HU_Map_LAO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt45_CT_HU_Map_LAO)));
pt45_ckov_corr_2EXP_LAO10 = medfilt2(Pt45_Ckov_DoseNorm_th_c_LAO_10(:,:,1).*pt45_HUcorr_2EXP_LAO10, [5 5]);
figure(3)
subplot('Position', pos{4})
imagesc(pt45_ckov_corr_2EXP_RPO10); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(4)
subplot('Position', pos{4})
imagesc(pt45_ckov_corr_2EXP_LAO10); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;


%patient 59
pt59_HUcorr_2EXP_RPO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt59_CT_HU_Map_RPO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt59_CT_HU_Map_RPO)));
pt59_ckov_corr_2EXP_RPO10 = medfilt2(Pt59_Ckov_DoseNorm_th_c_RPO_10(:,:,1).*pt59_HUcorr_2EXP_RPO10, [5 5]);
pt59_HUcorr_2EXP_LAO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt59_CT_HU_Map_LAO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt59_CT_HU_Map_LAO)));
pt59_ckov_corr_2EXP_LAO10 = medfilt2(Pt59_Ckov_DoseNorm_th_c_LAO_10(:,:,1).*pt59_HUcorr_2EXP_LAO10, [5 5]);
figure(3)
subplot('Position', pos{5})
imagesc(pt59_ckov_corr_2EXP_RPO10); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;
figure(4)
subplot('Position', pos{5})
imagesc(pt59_ckov_corr_2EXP_LAO10); caxis([0 1.3e5]); colormap(cmap1); axis image; axis off;


figure(3); clf;
[ha, pos] = tight_subplot(1,5,[.001 .001],[.01 .01],[.01 .01]);
figure(4); clf;
[ha, pos] = tight_subplot(1,5,[.001 .001],[.01 .01],[.01 .01]);

ckov_135HU_10_2EXP = fit_10_2EXP.a*exp(fit_10_2EXP.b*(-135)) + fit_10_2EXP.c*exp(fit_10_2EXP.d*(-135));

%patient 32
pt32_HUcorr_2EXP_RPO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt32_CT_HU_Map_RPO_3)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt32_CT_HU_Map_RPO_3)));
pt32_ckov_corr_2EXP_RPO10 = medfilt2(Pt32_Ckov_DoseNorm_th_c_RPO_10(:,:,1).*pt32_HUcorr_2EXP_RPO10, [5 5]);
pt32_HUcorr_2EXP_LAO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt32_CT_HU_Map_LAO_3)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt32_CT_HU_Map_LAO_3)));
pt32_ckov_corr_2EXP_LAO10 = medfilt2(Pt32_Ckov_DoseNorm_th_c_LAO_10(:,:,1).*pt32_HUcorr_2EXP_LAO10, [5 5]);
figure(3)
subplot('Position', pos{1})
imagesc(pt32_ckov_corr_2EXP_RPO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
figure(4)
subplot('Position', pos{1})
imagesc(pt32_ckov_corr_2EXP_LAO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;


%patient 39
pt39_HUcorr_2EXP_RPO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt39_CT_HU_Map_RPO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt39_CT_HU_Map_RPO)));
pt39_ckov_corr_2EXP_RPO10 = medfilt2(Pt39_Ckov_DoseNorm_th_c_RPO_10(:,:,1).*pt39_HUcorr_2EXP_RPO10, [5 5]);
pt39_HUcorr_2EXP_LAO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt39_CT_HU_Map_LAO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt39_CT_HU_Map_LAO)));
pt39_ckov_corr_2EXP_LAO10 = medfilt2(Pt39_Ckov_DoseNorm_th_c_LAO_10(:,:,1).*pt39_HUcorr_2EXP_LAO10, [5 5]);
figure(3)
subplot('Position', pos{2})
imagesc(pt39_ckov_corr_2EXP_RPO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
figure(4)
subplot('Position', pos{2})
imagesc(pt39_ckov_corr_2EXP_LAO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;


%patient 41
pt41_HUcorr_2EXP_RPO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt41_CT_HU_Map_RPO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt41_CT_HU_Map_RPO)));
pt41_ckov_corr_2EXP_RPO10 = medfilt2(Pt41_Ckov_DoseNorm_th_c_RPO_10(:,:,1).*pt41_HUcorr_2EXP_RPO10, [5 5]);
pt41_HUcorr_2EXP_LAO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt41_CT_HU_Map_LAO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt41_CT_HU_Map_LAO)));
pt41_ckov_corr_2EXP_LAO10 = medfilt2(Pt41_Ckov_DoseNorm_th_c_LAO_10(:,:,1).*pt41_HUcorr_2EXP_LAO10, [5 5]);
figure(3)
subplot('Position', pos{3})
imagesc(pt41_ckov_corr_2EXP_RPO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
figure(4)
subplot('Position', pos{3})
imagesc(pt41_ckov_corr_2EXP_LAO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;


%patient 45
pt45_HUcorr_2EXP_RPO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt45_CT_HU_Map_RPO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt45_CT_HU_Map_RPO)));
pt45_ckov_corr_2EXP_RPO10 = medfilt2(Pt45_Ckov_DoseNorm_th_c_RPO_10(:,:,1).*pt45_HUcorr_2EXP_RPO10, [5 5]);
pt45_HUcorr_2EXP_LAO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt45_CT_HU_Map_LAO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt45_CT_HU_Map_LAO)));
pt45_ckov_corr_2EXP_LAO10 = medfilt2(Pt45_Ckov_DoseNorm_th_c_LAO_10(:,:,1).*pt45_HUcorr_2EXP_LAO10, [5 5]);
figure(3)
subplot('Position', pos{4})
imagesc(pt45_ckov_corr_2EXP_RPO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
figure(4)
subplot('Position', pos{4})
imagesc(pt45_ckov_corr_2EXP_LAO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;


%patient 59
pt59_HUcorr_2EXP_RPO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt59_CT_HU_Map_RPO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt59_CT_HU_Map_RPO)));
pt59_ckov_corr_2EXP_RPO10 = medfilt2(Pt59_Ckov_DoseNorm_th_c_RPO_10(:,:,1).*pt59_HUcorr_2EXP_RPO10, [5 5]);
pt59_HUcorr_2EXP_LAO10 = ckov_135HU_10_2EXP./...
    (fit_10_2EXP.a*exp(fit_10_2EXP.b.*(Pt59_CT_HU_Map_LAO)) + fit_10_2EXP.c*exp(fit_10_2EXP.d.*(Pt59_CT_HU_Map_LAO)));
pt59_ckov_corr_2EXP_LAO10 = medfilt2(Pt59_Ckov_DoseNorm_th_c_LAO_10(:,:,1).*pt59_HUcorr_2EXP_LAO10, [5 5]);
figure(3)
subplot('Position', pos{5})
imagesc(pt59_ckov_corr_2EXP_RPO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
figure(4)
subplot('Position', pos{5})
imagesc(pt59_ckov_corr_2EXP_LAO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;



%% save a montage of uncorrected dose normalized stacks 
figure(12); clf;
[ha, pos] = tight_subplot(7,2,[.001 .001],[.01 .01],[.01 .01]);

%patient 30
subplot('Position', pos{1})
imagesc(Pt30_Ckov_DoseNorm_th_c_RPO(:,:,2)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 31
subplot('Position', pos{2})
imagesc(Pt31_Ckov_DoseNorm_th_c_RPO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 32
subplot('Position', pos{3})
imagesc(Pt32_Ckov_DoseNorm_th_c_RPO_6(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 35
subplot('Position', pos{4})
imagesc(Pt35_Ckov_DoseNorm_th_c_RPO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 36
subplot('Position', pos{5})
imagesc(Pt36_Ckov_DoseNorm_th_c_RPO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 37
subplot('Position', pos{6})
imagesc(Pt37_Ckov_DoseNorm_th_c_RPO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 39
subplot('Position', pos{7})
imagesc(Pt39_Ckov_DoseNorm_th_c_RPO_6(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 41
subplot('Position', pos{8})
imagesc(Pt41_Ckov_DoseNorm_th_c_RPO_6(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 44
subplot('Position', pos{9})
imagesc(Pt44_Ckov_DoseNorm_th_c_RPO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 45
subplot('Position', pos{10})
imagesc(Pt45_Ckov_DoseNorm_th_c_RPO_6(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 56
subplot('Position', pos{11})
imagesc(Pt56_Ckov_DoseNorm_th_c_RPO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 58
subplot('Position', pos{12})
imagesc(Pt58_Ckov_DoseNorm_th_c_RPO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 59
subplot('Position', pos{13})
imagesc(Pt59_Ckov_DoseNorm_th_c_RPO_6(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;

cd('E:\Exp86_Heterogeneous_HU\Pt_Registered_Data')
fig = gcf;
fig.OuterPosition = [-6 33 454 1047];
filename = 'HHU_Uncorrected_DoseNorm_Montage_RPO6X.fig';
saveas(gcf, filename)
filename = 'HHU_Uncorrected_DoseNorm_Montage_RPO6X.png';
saveas(gcf, filename)


figure(13); clf;
[ha, pos] = tight_subplot(7,2,[.001 .001],[.01 .01],[.01 .01]);

%patient 30
subplot('Position', pos{1})
imagesc(Pt30_Ckov_DoseNorm_th_c_LAO(:,:,2)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 31
subplot('Position', pos{2})
imagesc(Pt31_Ckov_DoseNorm_th_c_LAO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 32
subplot('Position', pos{3})
imagesc(Pt32_Ckov_DoseNorm_th_c_LAO_6(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 35
subplot('Position', pos{4})
imagesc(Pt35_Ckov_DoseNorm_th_c_LAO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 36
subplot('Position', pos{5})
imagesc(Pt36_Ckov_DoseNorm_th_c_LAO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 37
subplot('Position', pos{6})
imagesc(Pt37_Ckov_DoseNorm_th_c_LAO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 39
subplot('Position', pos{7})
imagesc(Pt39_Ckov_DoseNorm_th_c_LAO_6(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 41
subplot('Position', pos{8})
imagesc(Pt41_Ckov_DoseNorm_th_c_LAO_6(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 44
subplot('Position', pos{9})
imagesc(Pt44_Ckov_DoseNorm_th_c_LAO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 45
subplot('Position', pos{10})
imagesc(Pt45_Ckov_DoseNorm_th_c_LAO_6(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 56
subplot('Position', pos{11})
imagesc(Pt56_Ckov_DoseNorm_th_c_LAO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 58
subplot('Position', pos{12})
imagesc(Pt58_Ckov_DoseNorm_th_c_LAO(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 59
subplot('Position', pos{13})
imagesc(Pt59_Ckov_DoseNorm_th_c_LAO_6(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;

cd('E:\Exp86_Heterogeneous_HU\Pt_Registered_Data')
fig = gcf;
fig.OuterPosition = [-6 33 454 1047];
filename = 'HHU_Uncorrected_DoseNorm_Montage_LAO6X.fig';
saveas(gcf, filename)
filename = 'HHU_Uncorrected_DoseNorm_Montage_LAO6X.png';
saveas(gcf, filename)

%% 10 X
figure(15); clf;
[ha, pos] = tight_subplot(5,1,[.001 .001],[.01 .01],[.01 .01]);

%patient 32
subplot('Position', pos{1})
imagesc(Pt32_Ckov_DoseNorm_th_c_RPO_10(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 39
subplot('Position', pos{2})
imagesc(Pt39_Ckov_DoseNorm_th_c_RPO_10(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 41
subplot('Position', pos{3})
imagesc(Pt41_Ckov_DoseNorm_th_c_RPO_10(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 45
subplot('Position', pos{4})
imagesc(Pt45_Ckov_DoseNorm_th_c_RPO_10(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 59
subplot('Position', pos{5})
imagesc(Pt59_Ckov_DoseNorm_th_c_RPO_10(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
cd('E:\Exp86_Heterogeneous_HU\Pt_Registered_Data')
fig = gcf;
fig.OuterPosition =  [ 4          46         319        1030];
filename = 'HHU_Uncorrected_DoseNorm_Montage_RPO10X.fig';
saveas(gcf, filename)
filename = 'HHU_Uncorrected_DoseNorm_Montage_RPO10X.png';
saveas(gcf, filename)

figure(16); clf;
[ha, pos] = tight_subplot(5,1,[.001 .001],[.01 .01],[.01 .01]);

%patient 32
subplot('Position', pos{1})
imagesc(Pt32_Ckov_DoseNorm_th_c_LAO_10(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 39
subplot('Position', pos{2})
imagesc(Pt39_Ckov_DoseNorm_th_c_LAO_10(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 41
subplot('Position', pos{3})
imagesc(Pt41_Ckov_DoseNorm_th_c_LAO_10(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 45
subplot('Position', pos{4})
imagesc(Pt45_Ckov_DoseNorm_th_c_LAO_10(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
%patient 59
subplot('Position', pos{5})
imagesc(Pt59_Ckov_DoseNorm_th_c_LAO_10(:,:,1)); caxis([0 4.5e4]); colormap(cmap1); axis image; axis off;
cd('E:\Exp86_Heterogeneous_HU\Pt_Registered_Data')
fig = gcf;
fig = gcf;
fig.OuterPosition =  [ 4          46         319        1030];
filename = 'HHU_Uncorrected_DoseNorm_Montage_LAO10X.fig';
saveas(gcf, filename)
filename = 'HHU_Uncorrected_DoseNorm_Montage_LAO10X.png';
saveas(gcf, filename)

%% save a montage of the CORRECTED DOSE NORMALIZED STACKS
%%

figure(22); clf;
[ha, pos] = tight_subplot(7,2,[.001 .001],[.01 .01],[.01 .01]);

%patient 30
subplot('Position', pos{1})
imagesc(pt30_ckov_corr_2EXP_RPO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 31
subplot('Position', pos{2})
imagesc(pt31_ckov_corr_2EXP_RPO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 32
subplot('Position', pos{3})
imagesc(pt32_ckov_corr_2EXP_RPO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 35
subplot('Position', pos{4})
imagesc(pt35_ckov_corr_2EXP_RPO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 36
subplot('Position', pos{5})
imagesc(pt36_ckov_corr_2EXP_RPO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 37
subplot('Position', pos{6})
imagesc(pt37_ckov_corr_2EXP_RPO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 39
subplot('Position', pos{7})
imagesc(pt39_ckov_corr_2EXP_RPO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 41
subplot('Position', pos{8})
imagesc(pt41_ckov_corr_2EXP_RPO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 44
subplot('Position', pos{9})
imagesc(pt44_ckov_corr_2EXP_RPO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 45
subplot('Position', pos{10})
imagesc(pt45_ckov_corr_2EXP_RPO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 56
subplot('Position', pos{11})
imagesc(pt56_ckov_corr_2EXP_RPO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 58
subplot('Position', pos{12})
imagesc(pt58_ckov_corr_2EXP_RPO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 59
subplot('Position', pos{13})
imagesc(pt59_ckov_corr_2EXP_RPO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;

cd('E:\Exp86_Heterogeneous_HU\Pt_Registered_Data')
fig = gcf;
fig.OuterPosition = [-6 33 454 1047];
filename = 'HHU_Corrected_DoseNorm_Montage_RPO6X.fig';
saveas(gcf, filename)
filename = 'HHU_Corrected_DoseNorm_Montage_RPO6X.png';
saveas(gcf, filename)

figure(13); clf;
[ha, pos] = tight_subplot(7,2,[.001 .001],[.01 .01],[.01 .01]);
%patient 30
subplot('Position', pos{1})
imagesc(pt30_ckov_corr_2EXP_LAO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 31
subplot('Position', pos{2})
imagesc(pt31_ckov_corr_2EXP_LAO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 32
subplot('Position', pos{3})
imagesc(pt32_ckov_corr_2EXP_LAO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 35
subplot('Position', pos{4})
imagesc(pt35_ckov_corr_2EXP_LAO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 36
subplot('Position', pos{5})
imagesc(pt36_ckov_corr_2EXP_LAO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 37
subplot('Position', pos{6})
imagesc(pt37_ckov_corr_2EXP_LAO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 39
subplot('Position', pos{7})
imagesc(pt39_ckov_corr_2EXP_LAO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 41
subplot('Position', pos{8})
imagesc(pt41_ckov_corr_2EXP_LAO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 44
subplot('Position', pos{9})
imagesc(pt44_ckov_corr_2EXP_LAO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 45
subplot('Position', pos{10})
imagesc(pt45_ckov_corr_2EXP_LAO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 56
subplot('Position', pos{11})
imagesc(pt56_ckov_corr_2EXP_LAO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 58
subplot('Position', pos{12})
imagesc(pt58_ckov_corr_2EXP_LAO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 59
subplot('Position', pos{13})
imagesc(pt59_ckov_corr_2EXP_LAO6); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;

cd('E:\Exp86_Heterogeneous_HU\Pt_Registered_Data')
fig = gcf;
fig.OuterPosition = [-6 33 454 1047];
filename = 'HHU_Corrected_DoseNorm_Montage_LAO6X.fig';
saveas(gcf, filename)
filename = 'HHU_Corrected_DoseNorm_Montage_LAO6X.png';
saveas(gcf, filename)

%% 10 X
figure(15); clf;
[ha, pos] = tight_subplot(5,1,[.001 .001],[.01 .01],[.01 .01]);

%patient 32
subplot('Position', pos{1})
imagesc(pt32_ckov_corr_2EXP_RPO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 39
subplot('Position', pos{2})
imagesc(pt39_ckov_corr_2EXP_RPO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 41
subplot('Position', pos{3})
imagesc(pt41_ckov_corr_2EXP_RPO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 45
subplot('Position', pos{4})
imagesc(pt45_ckov_corr_2EXP_RPO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 59
subplot('Position', pos{5})
imagesc(pt59_ckov_corr_2EXP_RPO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
cd('E:\Exp86_Heterogeneous_HU\Pt_Registered_Data')
fig = gcf;
fig.OuterPosition =  [ 4          46         319        1030];
filename = 'HHU_Corrected_DoseNorm_Montage_RPO10X.fig';
saveas(gcf, filename)
filename = 'HHU_Corrected_DoseNorm_Montage_RPO10X.png';
saveas(gcf, filename)

figure(16); clf;
[ha, pos] = tight_subplot(5,1,[.001 .001],[.01 .01],[.01 .01]);

%patient 32
subplot('Position', pos{1})
imagesc(pt32_ckov_corr_2EXP_LAO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 39
subplot('Position', pos{2})
imagesc(pt39_ckov_corr_2EXP_LAO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 41
subplot('Position', pos{3})
imagesc(pt41_ckov_corr_2EXP_LAO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 45
subplot('Position', pos{4})
imagesc(pt45_ckov_corr_2EXP_LAO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
%patient 59
subplot('Position', pos{5})
imagesc(pt59_ckov_corr_2EXP_LAO10); caxis([0 1.1e5]); colormap(cmap1); axis image; axis off;
cd('E:\Exp86_Heterogeneous_HU\Pt_Registered_Data')
fig = gcf;
fig.OuterPosition =  [ 4          46         319        1030];
filename = 'HHU_Corrected_DoseNorm_Montage_LAO10X.fig';
saveas(gcf, filename)
filename = 'HHU_Corrected_DoseNorm_Montage_LAO10X.png';
saveas(gcf, filename)










%% NOW WE NEED TO GET COV METRICS FOR THE CORECTED IMAGES

%% LAO 6
%% PT30
clear Pt30_HU_median Pt30_Ckov_Corrected_median Pt30_Ckov_Uncorrected_median Pt30_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt30_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt30_GL_roi_masks(:,:,i);

    % HU 
    Pt30_HU = Pt30_CT_HU_Map_LAO.*m_roi; 
    Pt30_HU(Pt30_HU==0)=nan;
    Pt30_HU_median(i) = nanmedian(Pt30_HU(:));
    % DOSE
    Pt30_Dose_LAO6 = Pt30_registered_tp_LAO.*m_roi; 
    Pt30_Dose_LAO6 (Pt30_Dose_LAO6 ==0)=nan;
    Pt30_Dose_median_LAO6 (i) = nanmedian(Pt30_Dose_LAO6 (:));
    % UNCORRECTED
    Pt30_Ckov_Uncorrected_LAO6 = Pt30_Ckov_DoseNorm_th_c_LAO(:,:,2).*m_roi;
    Pt30_Ckov_Uncorrected_LAO6(Pt30_Ckov_Uncorrected_LAO6==0)=nan;
    Pt30_Ckov_Uncorrected_median_LAO6(i) = nanmedian(Pt30_Ckov_Uncorrected_LAO6(:));
    % CORRECTED
    Pt30_Ckov_Corrected_LAO6 = pt30_ckov_corr_2EXP_LAO6.*m_roi;
    Pt30_Ckov_Corrected_LAO6(Pt30_Ckov_Corrected_LAO6==0)=nan;
    Pt30_Ckov_Corrected_median_LAO6(i) = nanmedian(Pt30_Ckov_Corrected_LAO6(:));
    
end

%% PT31
clear Pt31_HU_median Pt31_Ckov_Corrected_median Pt31_Ckov_Uncorrected_median Pt31_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt31_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt31_GL_roi_masks(:,:,i);

    % HU 
    Pt31_HU = Pt31_CT_HU_Map_LAO.*m_roi; 
    Pt31_HU(Pt31_HU==0)=nan;
    Pt31_HU_median(i) = nanmedian(Pt31_HU(:));
    % DOSE
    Pt31_Dose_LAO6 = Pt31_registered_tp_LAO.*m_roi; 
    Pt31_Dose_LAO6 (Pt31_Dose_LAO6 ==0)=nan;
    Pt31_Dose_median_LAO6 (i) = nanmedian(Pt31_Dose_LAO6 (:));
    % UNCORRECTED
    Pt31_Ckov_Uncorrected_LAO6 = Pt31_Ckov_DoseNorm_th_c_LAO(:,:,1).*m_roi;
    Pt31_Ckov_Uncorrected_LAO6(Pt31_Ckov_Uncorrected_LAO6==0)=nan;
    Pt31_Ckov_Uncorrected_median_LAO6(i) = nanmedian(Pt31_Ckov_Uncorrected_LAO6(:));
    % CORRECTED
    Pt31_Ckov_Corrected_LAO6 = pt31_ckov_corr_2EXP_LAO6.*m_roi;
    Pt31_Ckov_Corrected_LAO6(Pt31_Ckov_Corrected_LAO6==0)=nan;
    Pt31_Ckov_Corrected_median_LAO6(i) = nanmedian(Pt31_Ckov_Corrected_LAO6(:));
    
end

%% PT32
clear Pt32_HU_median Pt32_Ckov_Corrected_median Pt32_Ckov_Uncorrected_median Pt32_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt32_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt32_GL_roi_masks(:,:,i);

    % HU 
    Pt32_HU = Pt32_CT_HU_Map_LAO.*m_roi; 
    Pt32_HU(Pt32_HU==0)=nan;
    Pt32_HU_median(i) = nanmedian(Pt32_HU(:));
    % DOSE
    Pt32_Dose_LAO6 = Pt32_registered_tp_LAO_6.*m_roi; 
    Pt32_Dose_LAO6 (Pt32_Dose_LAO6 ==0)=nan;
    Pt32_Dose_median_LAO6 (i) = nanmedian(Pt32_Dose_LAO6 (:));
    % UNCORRECTED
    Pt32_Ckov_Uncorrected_LAO6 = Pt32_Ckov_DoseNorm_th_c_LAO_6(:,:,2).*m_roi;
    Pt32_Ckov_Uncorrected_LAO6(Pt32_Ckov_Uncorrected_LAO6==0)=nan;
    Pt32_Ckov_Uncorrected_median_LAO6(i) = nanmedian(Pt32_Ckov_Uncorrected_LAO6(:));
    % CORRECTED
    Pt32_Ckov_Corrected_LAO6 = pt32_ckov_corr_2EXP_LAO6.*m_roi;
    Pt32_Ckov_Corrected_LAO6(Pt32_Ckov_Corrected_LAO6==0)=nan;
    Pt32_Ckov_Corrected_median_LAO6(i) = nanmedian(Pt32_Ckov_Corrected_LAO6(:));
    
end

%% PT35

clear Pt35_HU_median Pt35_Ckov_Corrected_median Pt35_Ckov_Uncorrected_median Pt35_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt35_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt35_GL_roi_masks(:,:,i);

    % HU 
    Pt35_HU = Pt35_CT_HU_Map_LAO.*m_roi; 
    Pt35_HU(Pt35_HU==0)=nan;
    Pt35_HU_median(i) = nanmedian(Pt35_HU(:));
    % DOSE
    Pt35_Dose_LAO6 = Pt35_registered_tp_LAO.*m_roi; 
    Pt35_Dose_LAO6 (Pt35_Dose_LAO6 ==0)=nan;
    Pt35_Dose_median_LAO6 (i) = nanmedian(Pt35_Dose_LAO6 (:));
    % UNCORRECTED
    Pt35_Ckov_Uncorrected_LAO6 = Pt35_Ckov_DoseNorm_th_c_LAO(:,:,2).*m_roi;
    Pt35_Ckov_Uncorrected_LAO6(Pt35_Ckov_Uncorrected_LAO6==0)=nan;
    Pt35_Ckov_Uncorrected_median_LAO6(i) = nanmedian(Pt35_Ckov_Uncorrected_LAO6(:));
    % CORRECTED
    Pt35_Ckov_Corrected_LAO6 = pt35_ckov_corr_2EXP_LAO6.*m_roi;
    Pt35_Ckov_Corrected_LAO6(Pt35_Ckov_Corrected_LAO6==0)=nan;
    Pt35_Ckov_Corrected_median_LAO6(i) = nanmedian(Pt35_Ckov_Corrected_LAO6(:));
    
end


%% PT36
clear Pt36_HU_median Pt36_Ckov_Corrected_median Pt36_Ckov_Uncorrected_median Pt36_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt36_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt36_GL_roi_masks(:,:,i);

    % HU 
    Pt36_HU = Pt36_CT_HU_Map_LAO.*m_roi; 
    Pt36_HU(Pt36_HU==0)=nan;
    Pt36_HU_median(i) = nanmedian(Pt36_HU(:));
    % DOSE
    Pt36_Dose_LAO6 = Pt36_registered_tp_LAO.*m_roi; 
    Pt36_Dose_LAO6 (Pt36_Dose_LAO6 ==0)=nan;
    Pt36_Dose_median_LAO6 (i) = nanmedian(Pt36_Dose_LAO6 (:));
    % UNCORRECTED
    Pt36_Ckov_Uncorrected_LAO6 = Pt36_Ckov_DoseNorm_th_c_LAO(:,:,2).*m_roi;
    Pt36_Ckov_Uncorrected_LAO6(Pt36_Ckov_Uncorrected_LAO6==0)=nan;
    Pt36_Ckov_Uncorrected_median_LAO6(i) = nanmedian(Pt36_Ckov_Uncorrected_LAO6(:));
    % CORRECTED
    Pt36_Ckov_Corrected_LAO6 = pt36_ckov_corr_2EXP_LAO6.*m_roi;
    Pt36_Ckov_Corrected_LAO6(Pt36_Ckov_Corrected_LAO6==0)=nan;
    Pt36_Ckov_Corrected_median_LAO6(i) = nanmedian(Pt36_Ckov_Corrected_LAO6(:));
    
end


%% PT37
clear Pt37_HU_median Pt37_Ckov_Corrected_median Pt37_Ckov_Uncorrected_median Pt37_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt37_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt37_GL_roi_masks(:,:,i);

    % HU 
    Pt37_HU = Pt37_CT_HU_Map_LAO.*m_roi; 
    Pt37_HU(Pt37_HU==0)=nan;
    Pt37_HU_median(i) = nanmedian(Pt37_HU(:));
    % DOSE
    Pt37_Dose_LAO6 = Pt37_registered_tp_LAO.*m_roi; 
    Pt37_Dose_LAO6 (Pt37_Dose_LAO6 ==0)=nan;
    Pt37_Dose_median_LAO6 (i) = nanmedian(Pt37_Dose_LAO6 (:));
    % UNCORRECTED
    Pt37_Ckov_Uncorrected_LAO6 = Pt37_Ckov_DoseNorm_th_c_LAO(:,:,2).*m_roi;
    Pt37_Ckov_Uncorrected_LAO6(Pt37_Ckov_Uncorrected_LAO6==0)=nan;
    Pt37_Ckov_Uncorrected_median_LAO6(i) = nanmedian(Pt37_Ckov_Uncorrected_LAO6(:));
    % CORRECTED
    Pt37_Ckov_Corrected_LAO6 = pt37_ckov_corr_2EXP_LAO6.*m_roi;
    Pt37_Ckov_Corrected_LAO6(Pt37_Ckov_Corrected_LAO6==0)=nan;
    Pt37_Ckov_Corrected_median_LAO6(i) = nanmedian(Pt37_Ckov_Corrected_LAO6(:));
    
end

%% PT39

clear Pt39_HU_median Pt39_Ckov_Corrected_median Pt39_Ckov_Uncorrected_median Pt39_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt39_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt39_GL_roi_masks(:,:,i);

    % HU 
    Pt39_HU = Pt39_CT_HU_Map_LAO.*m_roi; 
    Pt39_HU(Pt39_HU==0)=nan;
    Pt39_HU_median(i) = nanmedian(Pt39_HU(:));
    % DOSE
    Pt39_Dose_LAO6 = Pt39_registered_tp_LAO_6.*m_roi; 
    Pt39_Dose_LAO6 (Pt39_Dose_LAO6 ==0)=nan;
    Pt39_Dose_median_LAO6 (i) = nanmedian(Pt39_Dose_LAO6 (:));
    % UNCORRECTED
    Pt39_Ckov_Uncorrected_LAO6 = Pt39_Ckov_DoseNorm_th_c_LAO_6(:,:,1).*m_roi;
    Pt39_Ckov_Uncorrected_LAO6(Pt39_Ckov_Uncorrected_LAO6==0)=nan;
    Pt39_Ckov_Uncorrected_median_LAO6(i) = nanmedian(Pt39_Ckov_Uncorrected_LAO6(:));
    % CORRECTED
    Pt39_Ckov_Corrected_LAO6 = pt39_ckov_corr_2EXP_LAO6.*m_roi;
    Pt39_Ckov_Corrected_LAO6(Pt39_Ckov_Corrected_LAO6==0)=nan;
    Pt39_Ckov_Corrected_median_LAO6(i) = nanmedian(Pt39_Ckov_Corrected_LAO6(:));
    
end

%% PT41
clear Pt41_HU_median Pt41_Ckov_Corrected_median Pt41_Ckov_Uncorrected_median Pt41_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt41_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt41_GL_roi_masks(:,:,i);

    % HU 
    Pt41_HU = Pt41_CT_HU_Map_LAO.*m_roi; 
    Pt41_HU(Pt41_HU==0)=nan;
    Pt41_HU_median(i) = nanmedian(Pt41_HU(:));
    % DOSE
    Pt41_Dose_LAO6 = Pt41_registered_tp_LAO_6.*m_roi; 
    Pt41_Dose_LAO6 (Pt41_Dose_LAO6 ==0)=nan;
    Pt41_Dose_median_LAO6 (i) = nanmedian(Pt41_Dose_LAO6 (:));
    % UNCORRECTED
    Pt41_Ckov_Uncorrected_LAO6 = Pt41_Ckov_DoseNorm_th_c_LAO_6(:,:,2).*m_roi;
    Pt41_Ckov_Uncorrected_LAO6(Pt41_Ckov_Uncorrected_LAO6==0)=nan;
    Pt41_Ckov_Uncorrected_median_LAO6(i) = nanmedian(Pt41_Ckov_Uncorrected_LAO6(:));
    % CORRECTED
    Pt41_Ckov_Corrected_LAO6 = pt41_ckov_corr_2EXP_LAO6.*m_roi;
    Pt41_Ckov_Corrected_LAO6(Pt41_Ckov_Corrected_LAO6==0)=nan;
    Pt41_Ckov_Corrected_median_LAO6(i) = nanmedian(Pt41_Ckov_Corrected_LAO6(:));
    
end


%% PT44
clear Pt44_HU_median Pt44_Ckov_Corrected_median Pt44_Ckov_Uncorrected_median Pt44_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt44_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt44_GL_roi_masks(:,:,i);

    % HU 
    Pt44_HU = Pt44_CT_HU_Map_LAO.*m_roi; 
    Pt44_HU(Pt44_HU==0)=nan;
    Pt44_HU_median(i) = nanmedian(Pt44_HU(:));
    % DOSE
    Pt44_Dose_LAO6 = Pt44_registered_tp_LAO.*m_roi; 
    Pt44_Dose_LAO6 (Pt44_Dose_LAO6 ==0)=nan;
    Pt44_Dose_median_LAO6 (i) = nanmedian(Pt44_Dose_LAO6 (:));
    % UNCORRECTED
    Pt44_Ckov_Uncorrected_LAO6 = Pt44_Ckov_DoseNorm_th_c_LAO(:,:,2).*m_roi;
    Pt44_Ckov_Uncorrected_LAO6(Pt44_Ckov_Uncorrected_LAO6==0)=nan;
    Pt44_Ckov_Uncorrected_median_LAO6(i) = nanmedian(Pt44_Ckov_Uncorrected_LAO6(:));
    % CORRECTED
    Pt44_Ckov_Corrected_LAO6 = pt44_ckov_corr_2EXP_LAO6.*m_roi;
    Pt44_Ckov_Corrected_LAO6(Pt44_Ckov_Corrected_LAO6==0)=nan;
    Pt44_Ckov_Corrected_median_LAO6(i) = nanmedian(Pt44_Ckov_Corrected_LAO6(:));
    
end

%% PT45
clear Pt45_HU_median Pt45_Ckov_Corrected_median Pt45_Ckov_Uncorrected_median Pt45_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt45_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt45_GL_roi_masks(:,:,i);

    % HU 
    Pt45_HU = Pt45_CT_HU_Map_LAO.*m_roi; 
    Pt45_HU(Pt45_HU==0)=nan;
    Pt45_HU_median(i) = nanmedian(Pt45_HU(:));
    % DOSE
    Pt45_Dose_LAO6 = Pt45_registered_tp_LAO_6.*m_roi; 
    Pt45_Dose_LAO6 (Pt45_Dose_LAO6 ==0)=nan;
    Pt45_Dose_median_LAO6 (i) = nanmedian(Pt45_Dose_LAO6 (:));
    % UNCORRECTED
    Pt45_Ckov_Uncorrected_LAO6 = Pt45_Ckov_DoseNorm_th_c_LAO_6(:,:,2).*m_roi;
    Pt45_Ckov_Uncorrected_LAO6(Pt45_Ckov_Uncorrected_LAO6==0)=nan;
    Pt45_Ckov_Uncorrected_median_LAO6(i) = nanmedian(Pt45_Ckov_Uncorrected_LAO6(:));
    % CORRECTED
    Pt45_Ckov_Corrected_LAO6 = pt45_ckov_corr_2EXP_LAO6.*m_roi;
    Pt45_Ckov_Corrected_LAO6(Pt45_Ckov_Corrected_LAO6==0)=nan;
    Pt45_Ckov_Corrected_median_LAO6(i) = nanmedian(Pt45_Ckov_Corrected_LAO6(:));
    
end

%% PT56

clear Pt56_HU_median Pt56_Ckov_Corrected_median Pt56_Ckov_Uncorrected_median Pt56_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt56_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt56_GL_roi_masks(:,:,i);

    % HU 
    Pt56_HU = Pt56_CT_HU_Map_LAO.*m_roi; 
    Pt56_HU(Pt56_HU==0)=nan;
    Pt56_HU_median(i) = nanmedian(Pt56_HU(:));
    % DOSE
    Pt56_Dose_LAO6 = Pt56_registered_tp_LAO.*m_roi; 
    Pt56_Dose_LAO6 (Pt56_Dose_LAO6 ==0)=nan;
    Pt56_Dose_median_LAO6 (i) = nanmedian(Pt56_Dose_LAO6 (:));
    % UNCORRECTED
    Pt56_Ckov_Uncorrected_LAO6 = Pt56_Ckov_DoseNorm_th_c_LAO(:,:,2).*m_roi;
    Pt56_Ckov_Uncorrected_LAO6(Pt56_Ckov_Uncorrected_LAO6==0)=nan;
    Pt56_Ckov_Uncorrected_median_LAO6(i) = nanmedian(Pt56_Ckov_Uncorrected_LAO6(:));
    % CORRECTED
    Pt56_Ckov_Corrected_LAO6 = pt56_ckov_corr_2EXP_LAO6.*m_roi;
    Pt56_Ckov_Corrected_LAO6(Pt56_Ckov_Corrected_LAO6==0)=nan;
    Pt56_Ckov_Corrected_median_LAO6(i) = nanmedian(Pt56_Ckov_Corrected_LAO6(:));
    
end

%% PT58
clear Pt58_HU_median Pt58_Ckov_Corrected_median Pt58_Ckov_Uncorrected_median Pt58_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt58_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt58_GL_roi_masks(:,:,i);

    % HU 
    Pt58_HU = Pt58_CT_HU_Map_LAO.*m_roi; 
    Pt58_HU(Pt58_HU==0)=nan;
    Pt58_HU_median(i) = nanmedian(Pt58_HU(:));
    % DOSE
    Pt58_Dose_LAO6 = Pt58_registered_tp_LAO.*m_roi; 
    Pt58_Dose_LAO6 (Pt58_Dose_LAO6 ==0)=nan;
    Pt58_Dose_median_LAO6 (i) = nanmedian(Pt58_Dose_LAO6 (:));
    % UNCORRECTED
    Pt58_Ckov_Uncorrected_LAO6 = Pt58_Ckov_DoseNorm_th_c_LAO(:,:,2).*m_roi;
    Pt58_Ckov_Uncorrected_LAO6(Pt58_Ckov_Uncorrected_LAO6==0)=nan;
    Pt58_Ckov_Uncorrected_median_LAO6(i) = nanmedian(Pt58_Ckov_Uncorrected_LAO6(:));
    % CORRECTED
    Pt58_Ckov_Corrected_LAO6 = pt58_ckov_corr_2EXP_LAO6.*m_roi;
    Pt58_Ckov_Corrected_LAO6(Pt58_Ckov_Corrected_LAO6==0)=nan;
    Pt58_Ckov_Corrected_median_LAO6(i) = nanmedian(Pt58_Ckov_Corrected_LAO6(:));
    
end

%% PT59
clear Pt59_HU_median Pt59_Ckov_Corrected_median Pt59_Ckov_Uncorrected_median Pt59_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt59_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt59_GL_roi_masks(:,:,i);

    % HU 
    Pt59_HU = Pt59_CT_HU_Map_LAO.*m_roi; 
    Pt59_HU(Pt59_HU==0)=nan;
    Pt59_HU_median(i) = nanmedian(Pt59_HU(:));
    % DOSE
    Pt59_Dose_LAO6 = Pt59_registered_tp_LAO_6.*m_roi; 
    Pt59_Dose_LAO6 (Pt59_Dose_LAO6 ==0)=nan;
    Pt59_Dose_median_LAO6 (i) = nanmedian(Pt59_Dose_LAO6 (:));
    % UNCORRECTED
    Pt59_Ckov_Uncorrected_LAO6 = Pt59_Ckov_DoseNorm_th_c_LAO_6(:,:,2).*m_roi;
    Pt59_Ckov_Uncorrected_LAO6(Pt59_Ckov_Uncorrected_LAO6==0)=nan;
    Pt59_Ckov_Uncorrected_median_LAO6(i) = nanmedian(Pt59_Ckov_Uncorrected_LAO6(:));
    % CORRECTED
    Pt59_Ckov_Corrected_LAO6 = pt59_ckov_corr_2EXP_LAO6.*m_roi;
    Pt59_Ckov_Corrected_LAO6(Pt59_Ckov_Corrected_LAO6==0)=nan;
    Pt59_Ckov_Corrected_median_LAO6(i) = nanmedian(Pt59_Ckov_Corrected_LAO6(:));
    
end


%% Scatter and Plot all
figure(102)
clf
[ha, pos] = tight_subplot(1, 2,[.1 .1],[.2 .1],[.1 .1]);
subplot('Position', pos{1})
scatter(Pt30_HU_median(:), Pt30_Ckov_Uncorrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt31_HU_median(:), Pt31_Ckov_Uncorrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_median(:), Pt32_Ckov_Uncorrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt35_HU_median(:), Pt35_Ckov_Uncorrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt36_HU_median(:), Pt36_Ckov_Uncorrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt37_HU_median(:), Pt37_Ckov_Uncorrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_median(:), Pt39_Ckov_Uncorrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_median(:), Pt41_Ckov_Uncorrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt44_HU_median(:), Pt44_Ckov_Uncorrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_median(:), Pt45_Ckov_Uncorrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt56_HU_median(:), Pt56_Ckov_Uncorrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt58_HU_median(:), Pt58_Ckov_Uncorrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_median(:), Pt59_Ckov_Uncorrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-150 50]), 
ylim([0 6e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 12;

subplot('Position', pos{2})
scatter(Pt30_HU_median(:), Pt30_Ckov_Corrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt31_HU_median(:), Pt31_Ckov_Corrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_median(:), Pt32_Ckov_Corrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt35_HU_median(:), Pt35_Ckov_Corrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt36_HU_median(:), Pt36_Ckov_Corrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt37_HU_median(:), Pt37_Ckov_Corrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_median(:), Pt39_Ckov_Corrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_median(:), Pt41_Ckov_Corrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt44_HU_median(:), Pt44_Ckov_Corrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_median(:), Pt45_Ckov_Corrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt56_HU_median(:), Pt56_Ckov_Corrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt58_HU_median(:), Pt58_Ckov_Corrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_median(:), Pt59_Ckov_Corrected_median_LAO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-150 50]), 
ylim([0 9e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 12;

AllPt_DoseNorm_Uncorrected_Medians_LAO6 = [Pt30_Ckov_Uncorrected_median_LAO6,...
    Pt31_Ckov_Uncorrected_median_LAO6, Pt32_Ckov_Uncorrected_median_LAO6,...
    Pt35_Ckov_Uncorrected_median_LAO6, Pt36_Ckov_Uncorrected_median_LAO6,...
    Pt37_Ckov_Uncorrected_median_LAO6, Pt39_Ckov_Uncorrected_median_LAO6,...
    Pt41_Ckov_Uncorrected_median_LAO6, Pt44_Ckov_Uncorrected_median_LAO6,...
    Pt45_Ckov_Uncorrected_median_LAO6, Pt56_Ckov_Uncorrected_median_LAO6,...
    Pt58_Ckov_Uncorrected_median_LAO6, Pt59_Ckov_Uncorrected_median_LAO6];
    
AllPt_DoseNorm_Corrected_Medians_LAO6 = [Pt30_Ckov_Corrected_median_LAO6,...
    Pt31_Ckov_Corrected_median_LAO6, Pt32_Ckov_Corrected_median_LAO6,...
    Pt35_Ckov_Corrected_median_LAO6, Pt36_Ckov_Corrected_median_LAO6,...
    Pt37_Ckov_Corrected_median_LAO6, Pt39_Ckov_Corrected_median_LAO6,...
    Pt41_Ckov_Corrected_median_LAO6, Pt44_Ckov_Corrected_median_LAO6,...
    Pt45_Ckov_Corrected_median_LAO6, Pt56_Ckov_Corrected_median_LAO6,...
    Pt58_Ckov_Corrected_median_LAO6, Pt59_Ckov_Corrected_median_LAO6,];

mu_uncorr_LAO6 = mean(AllPt_DoseNorm_Uncorrected_Medians_LAO6)
std_uncorr_LAO6 = std(AllPt_DoseNorm_Uncorrected_Medians_LAO6)
cov_uncorr_LAO6 = std_uncorr_LAO6/mu_uncorr_LAO6

mu_corr_LAO6 = mean(AllPt_DoseNorm_Corrected_Medians_LAO6)
std_corr_LAO6 = std(AllPt_DoseNorm_Corrected_Medians_LAO6)
cov_corr_LAO6 = std_corr_LAO6/mu_corr_LAO6

%% RPO 6X
%% PT30
clear Pt30_HU_median Pt30_Ckov_Corrected_median Pt30_Ckov_Uncorrected_median Pt30_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt30_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt30_GL_roi_masks(:,:,i);

    % HU 
    Pt30_HU = Pt30_CT_HU_Map_RPO.*m_roi; 
    Pt30_HU(Pt30_HU==0)=nan;
    Pt30_HU_median(i) = nanmedian(Pt30_HU(:));
    % DOSE
    Pt30_Dose_RPO6 = Pt30_registered_tp_RPO.*m_roi; 
    Pt30_Dose_RPO6 (Pt30_Dose_RPO6 ==0)=nan;
    Pt30_Dose_median_RPO6 (i) = nanmedian(Pt30_Dose_RPO6 (:));
    % UNCORRECTED
    Pt30_Ckov_Uncorrected_RPO6 = Pt30_Ckov_DoseNorm_th_c_RPO(:,:,2).*m_roi;
    Pt30_Ckov_Uncorrected_RPO6(Pt30_Ckov_Uncorrected_RPO6==0)=nan;
    Pt30_Ckov_Uncorrected_median_RPO6(i) = nanmedian(Pt30_Ckov_Uncorrected_RPO6(:));
    % CORRECTED
    Pt30_Ckov_Corrected_RPO6 = pt30_ckov_corr_2EXP_RPO6.*m_roi;
    Pt30_Ckov_Corrected_RPO6(Pt30_Ckov_Corrected_RPO6==0)=nan;
    Pt30_Ckov_Corrected_median_RPO6(i) = nanmedian(Pt30_Ckov_Corrected_RPO6(:));
    
end

%% PT31
clear Pt31_HU_median Pt31_Ckov_Corrected_median Pt31_Ckov_Uncorrected_median Pt31_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt31_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt31_GL_roi_masks(:,:,i);

    % HU 
    Pt31_HU = Pt31_CT_HU_Map_RPO.*m_roi; 
    Pt31_HU(Pt31_HU==0)=nan;
    Pt31_HU_median(i) = nanmedian(Pt31_HU(:));
    % DOSE
    Pt31_Dose_RPO6 = Pt31_registered_tp_RPO.*m_roi; 
    Pt31_Dose_RPO6 (Pt31_Dose_RPO6 ==0)=nan;
    Pt31_Dose_median_RPO6 (i) = nanmedian(Pt31_Dose_RPO6 (:));
    % UNCORRECTED
    Pt31_Ckov_Uncorrected_RPO6 = Pt31_Ckov_DoseNorm_th_c_RPO(:,:,1).*m_roi;
    Pt31_Ckov_Uncorrected_RPO6(Pt31_Ckov_Uncorrected_RPO6==0)=nan;
    Pt31_Ckov_Uncorrected_median_RPO6(i) = nanmedian(Pt31_Ckov_Uncorrected_RPO6(:));
    % CORRECTED
    Pt31_Ckov_Corrected_RPO6 = pt31_ckov_corr_2EXP_RPO6.*m_roi;
    Pt31_Ckov_Corrected_RPO6(Pt31_Ckov_Corrected_RPO6==0)=nan;
    Pt31_Ckov_Corrected_median_RPO6(i) = nanmedian(Pt31_Ckov_Corrected_RPO6(:));
    
end

%% PT32
clear Pt32_HU_median Pt32_Ckov_Corrected_median Pt32_Ckov_Uncorrected_median Pt32_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt32_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt32_GL_roi_masks(:,:,i);

    % HU 
    Pt32_HU = Pt32_CT_HU_Map_RPO.*m_roi; 
    Pt32_HU(Pt32_HU==0)=nan;
    Pt32_HU_median(i) = nanmedian(Pt32_HU(:));
    % DOSE
    Pt32_Dose_RPO6 = Pt32_registered_tp_RPO_6.*m_roi; 
    Pt32_Dose_RPO6 (Pt32_Dose_RPO6 ==0)=nan;
    Pt32_Dose_median_RPO6 (i) = nanmedian(Pt32_Dose_RPO6 (:));
    % UNCORRECTED
    Pt32_Ckov_Uncorrected_RPO6 = Pt32_Ckov_DoseNorm_th_c_RPO_6(:,:,2).*m_roi;
    Pt32_Ckov_Uncorrected_RPO6(Pt32_Ckov_Uncorrected_RPO6==0)=nan;
    Pt32_Ckov_Uncorrected_median_RPO6(i) = nanmedian(Pt32_Ckov_Uncorrected_RPO6(:));
    % CORRECTED
    Pt32_Ckov_Corrected_RPO6 = pt32_ckov_corr_2EXP_RPO6.*m_roi;
    Pt32_Ckov_Corrected_RPO6(Pt32_Ckov_Corrected_RPO6==0)=nan;
    Pt32_Ckov_Corrected_median_RPO6(i) = nanmedian(Pt32_Ckov_Corrected_RPO6(:));
    
end

%% PT35

clear Pt35_HU_median Pt35_Ckov_Corrected_median Pt35_Ckov_Uncorrected_median Pt35_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt35_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt35_GL_roi_masks(:,:,i);

    % HU 
    Pt35_HU = Pt35_CT_HU_Map_RPO.*m_roi; 
    Pt35_HU(Pt35_HU==0)=nan;
    Pt35_HU_median(i) = nanmedian(Pt35_HU(:));
    % DOSE
    Pt35_Dose_RPO6 = Pt35_registered_tp_RPO.*m_roi; 
    Pt35_Dose_RPO6 (Pt35_Dose_RPO6 ==0)=nan;
    Pt35_Dose_median_RPO6 (i) = nanmedian(Pt35_Dose_RPO6 (:));
    % UNCORRECTED
    Pt35_Ckov_Uncorrected_RPO6 = Pt35_Ckov_DoseNorm_th_c_RPO(:,:,2).*m_roi;
    Pt35_Ckov_Uncorrected_RPO6(Pt35_Ckov_Uncorrected_RPO6==0)=nan;
    Pt35_Ckov_Uncorrected_median_RPO6(i) = nanmedian(Pt35_Ckov_Uncorrected_RPO6(:));
    % CORRECTED
    Pt35_Ckov_Corrected_RPO6 = pt35_ckov_corr_2EXP_RPO6.*m_roi;
    Pt35_Ckov_Corrected_RPO6(Pt35_Ckov_Corrected_RPO6==0)=nan;
    Pt35_Ckov_Corrected_median_RPO6(i) = nanmedian(Pt35_Ckov_Corrected_RPO6(:));
    
end


%% PT36
clear Pt36_HU_median Pt36_Ckov_Corrected_median Pt36_Ckov_Uncorrected_median Pt36_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt36_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt36_GL_roi_masks(:,:,i);

    % HU 
    Pt36_HU = Pt36_CT_HU_Map_RPO.*m_roi; 
    Pt36_HU(Pt36_HU==0)=nan;
    Pt36_HU_median(i) = nanmedian(Pt36_HU(:));
    % DOSE
    Pt36_Dose_RPO6 = Pt36_registered_tp_RPO.*m_roi; 
    Pt36_Dose_RPO6 (Pt36_Dose_RPO6 ==0)=nan;
    Pt36_Dose_median_RPO6 (i) = nanmedian(Pt36_Dose_RPO6 (:));
    % UNCORRECTED
    Pt36_Ckov_Uncorrected_RPO6 = Pt36_Ckov_DoseNorm_th_c_RPO(:,:,2).*m_roi;
    Pt36_Ckov_Uncorrected_RPO6(Pt36_Ckov_Uncorrected_RPO6==0)=nan;
    Pt36_Ckov_Uncorrected_median_RPO6(i) = nanmedian(Pt36_Ckov_Uncorrected_RPO6(:));
    % CORRECTED
    Pt36_Ckov_Corrected_RPO6 = pt36_ckov_corr_2EXP_RPO6.*m_roi;
    Pt36_Ckov_Corrected_RPO6(Pt36_Ckov_Corrected_RPO6==0)=nan;
    Pt36_Ckov_Corrected_median_RPO6(i) = nanmedian(Pt36_Ckov_Corrected_RPO6(:));
    
end


%% PT37
clear Pt37_HU_median Pt37_Ckov_Corrected_median Pt37_Ckov_Uncorrected_median Pt37_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt37_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt37_GL_roi_masks(:,:,i);

    % HU 
    Pt37_HU = Pt37_CT_HU_Map_RPO.*m_roi; 
    Pt37_HU(Pt37_HU==0)=nan;
    Pt37_HU_median(i) = nanmedian(Pt37_HU(:));
    % DOSE
    Pt37_Dose_RPO6 = Pt37_registered_tp_RPO.*m_roi; 
    Pt37_Dose_RPO6 (Pt37_Dose_RPO6 ==0)=nan;
    Pt37_Dose_median_RPO6 (i) = nanmedian(Pt37_Dose_RPO6 (:));
    % UNCORRECTED
    Pt37_Ckov_Uncorrected_RPO6 = Pt37_Ckov_DoseNorm_th_c_RPO(:,:,2).*m_roi;
    Pt37_Ckov_Uncorrected_RPO6(Pt37_Ckov_Uncorrected_RPO6==0)=nan;
    Pt37_Ckov_Uncorrected_median_RPO6(i) = nanmedian(Pt37_Ckov_Uncorrected_RPO6(:));
    % CORRECTED
    Pt37_Ckov_Corrected_RPO6 = pt37_ckov_corr_2EXP_RPO6.*m_roi;
    Pt37_Ckov_Corrected_RPO6(Pt37_Ckov_Corrected_RPO6==0)=nan;
    Pt37_Ckov_Corrected_median_RPO6(i) = nanmedian(Pt37_Ckov_Corrected_RPO6(:));
    
end

%% PT39

clear Pt39_HU_median Pt39_Ckov_Corrected_median Pt39_Ckov_Uncorrected_median Pt39_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt39_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt39_GL_roi_masks(:,:,i);

    % HU 
    Pt39_HU = Pt39_CT_HU_Map_RPO.*m_roi; 
    Pt39_HU(Pt39_HU==0)=nan;
    Pt39_HU_median(i) = nanmedian(Pt39_HU(:));
    % DOSE
    Pt39_Dose_RPO6 = Pt39_registered_tp_RPO_6.*m_roi; 
    Pt39_Dose_RPO6 (Pt39_Dose_RPO6 ==0)=nan;
    Pt39_Dose_median_RPO6 (i) = nanmedian(Pt39_Dose_RPO6 (:));
    % UNCORRECTED
    Pt39_Ckov_Uncorrected_RPO6 = Pt39_Ckov_DoseNorm_th_c_RPO_6(:,:,1).*m_roi;
    Pt39_Ckov_Uncorrected_RPO6(Pt39_Ckov_Uncorrected_RPO6==0)=nan;
    Pt39_Ckov_Uncorrected_median_RPO6(i) = nanmedian(Pt39_Ckov_Uncorrected_RPO6(:));
    % CORRECTED
    Pt39_Ckov_Corrected_RPO6 = pt39_ckov_corr_2EXP_RPO6.*m_roi;
    Pt39_Ckov_Corrected_RPO6(Pt39_Ckov_Corrected_RPO6==0)=nan;
    Pt39_Ckov_Corrected_median_RPO6(i) = nanmedian(Pt39_Ckov_Corrected_RPO6(:));
    
end

%% PT41
clear Pt41_HU_median Pt41_Ckov_Corrected_median Pt41_Ckov_Uncorrected_median Pt41_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt41_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt41_GL_roi_masks(:,:,i);

    % HU 
    Pt41_HU = Pt41_CT_HU_Map_RPO.*m_roi; 
    Pt41_HU(Pt41_HU==0)=nan;
    Pt41_HU_median(i) = nanmedian(Pt41_HU(:));
    % DOSE
    Pt41_Dose_RPO6 = Pt41_registered_tp_RPO_6.*m_roi; 
    Pt41_Dose_RPO6 (Pt41_Dose_RPO6 ==0)=nan;
    Pt41_Dose_median_RPO6 (i) = nanmedian(Pt41_Dose_RPO6 (:));
    % UNCORRECTED
    Pt41_Ckov_Uncorrected_RPO6 = Pt41_Ckov_DoseNorm_th_c_RPO_6(:,:,2).*m_roi;
    Pt41_Ckov_Uncorrected_RPO6(Pt41_Ckov_Uncorrected_RPO6==0)=nan;
    Pt41_Ckov_Uncorrected_median_RPO6(i) = nanmedian(Pt41_Ckov_Uncorrected_RPO6(:));
    % CORRECTED
    Pt41_Ckov_Corrected_RPO6 = pt41_ckov_corr_2EXP_RPO6.*m_roi;
    Pt41_Ckov_Corrected_RPO6(Pt41_Ckov_Corrected_RPO6==0)=nan;
    Pt41_Ckov_Corrected_median_RPO6(i) = nanmedian(Pt41_Ckov_Corrected_RPO6(:));
    
end


%% PT44
clear Pt44_HU_median Pt44_Ckov_Corrected_median Pt44_Ckov_Uncorrected_median Pt44_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt44_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt44_GL_roi_masks(:,:,i);

    % HU 
    Pt44_HU = Pt44_CT_HU_Map_RPO.*m_roi; 
    Pt44_HU(Pt44_HU==0)=nan;
    Pt44_HU_median(i) = nanmedian(Pt44_HU(:));
    % DOSE
    Pt44_Dose_RPO6 = Pt44_registered_tp_RPO.*m_roi; 
    Pt44_Dose_RPO6 (Pt44_Dose_RPO6 ==0)=nan;
    Pt44_Dose_median_RPO6 (i) = nanmedian(Pt44_Dose_RPO6 (:));
    % UNCORRECTED
    Pt44_Ckov_Uncorrected_RPO6 = Pt44_Ckov_DoseNorm_th_c_RPO(:,:,2).*m_roi;
    Pt44_Ckov_Uncorrected_RPO6(Pt44_Ckov_Uncorrected_RPO6==0)=nan;
    Pt44_Ckov_Uncorrected_median_RPO6(i) = nanmedian(Pt44_Ckov_Uncorrected_RPO6(:));
    % CORRECTED
    Pt44_Ckov_Corrected_RPO6 = pt44_ckov_corr_2EXP_RPO6.*m_roi;
    Pt44_Ckov_Corrected_RPO6(Pt44_Ckov_Corrected_RPO6==0)=nan;
    Pt44_Ckov_Corrected_median_RPO6(i) = nanmedian(Pt44_Ckov_Corrected_RPO6(:));
    
end

%% PT45
clear Pt45_HU_median Pt45_Ckov_Corrected_median Pt45_Ckov_Uncorrected_median Pt45_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt45_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt45_GL_roi_masks(:,:,i);

    % HU 
    Pt45_HU = Pt45_CT_HU_Map_RPO.*m_roi; 
    Pt45_HU(Pt45_HU==0)=nan;
    Pt45_HU_median(i) = nanmedian(Pt45_HU(:));
    % DOSE
    Pt45_Dose_RPO6 = Pt45_registered_tp_RPO_6.*m_roi; 
    Pt45_Dose_RPO6 (Pt45_Dose_RPO6 ==0)=nan;
    Pt45_Dose_median_RPO6 (i) = nanmedian(Pt45_Dose_RPO6 (:));
    % UNCORRECTED
    Pt45_Ckov_Uncorrected_RPO6 = Pt45_Ckov_DoseNorm_th_c_RPO_6(:,:,2).*m_roi;
    Pt45_Ckov_Uncorrected_RPO6(Pt45_Ckov_Uncorrected_RPO6==0)=nan;
    Pt45_Ckov_Uncorrected_median_RPO6(i) = nanmedian(Pt45_Ckov_Uncorrected_RPO6(:));
    % CORRECTED
    Pt45_Ckov_Corrected_RPO6 = pt45_ckov_corr_2EXP_RPO6.*m_roi;
    Pt45_Ckov_Corrected_RPO6(Pt45_Ckov_Corrected_RPO6==0)=nan;
    Pt45_Ckov_Corrected_median_RPO6(i) = nanmedian(Pt45_Ckov_Corrected_RPO6(:));
    
end

%% PT56

clear Pt56_HU_median Pt56_Ckov_Corrected_median Pt56_Ckov_Uncorrected_median Pt56_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt56_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt56_GL_roi_masks(:,:,i);

    % HU 
    Pt56_HU = Pt56_CT_HU_Map_RPO.*m_roi; 
    Pt56_HU(Pt56_HU==0)=nan;
    Pt56_HU_median(i) = nanmedian(Pt56_HU(:));
    % DOSE
    Pt56_Dose_RPO6 = Pt56_registered_tp_RPO.*m_roi; 
    Pt56_Dose_RPO6 (Pt56_Dose_RPO6 ==0)=nan;
    Pt56_Dose_median_RPO6 (i) = nanmedian(Pt56_Dose_RPO6 (:));
    % UNCORRECTED
    Pt56_Ckov_Uncorrected_RPO6 = Pt56_Ckov_DoseNorm_th_c_RPO(:,:,2).*m_roi;
    Pt56_Ckov_Uncorrected_RPO6(Pt56_Ckov_Uncorrected_RPO6==0)=nan;
    Pt56_Ckov_Uncorrected_median_RPO6(i) = nanmedian(Pt56_Ckov_Uncorrected_RPO6(:));
    % CORRECTED
    Pt56_Ckov_Corrected_RPO6 = pt56_ckov_corr_2EXP_RPO6.*m_roi;
    Pt56_Ckov_Corrected_RPO6(Pt56_Ckov_Corrected_RPO6==0)=nan;
    Pt56_Ckov_Corrected_median_RPO6(i) = nanmedian(Pt56_Ckov_Corrected_RPO6(:));
    
end

%% PT58
clear Pt58_HU_median Pt58_Ckov_Corrected_median Pt58_Ckov_Uncorrected_median Pt58_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt58_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt58_GL_roi_masks(:,:,i);

    % HU 
    Pt58_HU = Pt58_CT_HU_Map_RPO.*m_roi; 
    Pt58_HU(Pt58_HU==0)=nan;
    Pt58_HU_median(i) = nanmedian(Pt58_HU(:));
    % DOSE
    Pt58_Dose_RPO6 = Pt58_registered_tp_RPO.*m_roi; 
    Pt58_Dose_RPO6 (Pt58_Dose_RPO6 ==0)=nan;
    Pt58_Dose_median_RPO6 (i) = nanmedian(Pt58_Dose_RPO6 (:));
    % UNCORRECTED
    Pt58_Ckov_Uncorrected_RPO6 = Pt58_Ckov_DoseNorm_th_c_RPO(:,:,2).*m_roi;
    Pt58_Ckov_Uncorrected_RPO6(Pt58_Ckov_Uncorrected_RPO6==0)=nan;
    Pt58_Ckov_Uncorrected_median_RPO6(i) = nanmedian(Pt58_Ckov_Uncorrected_RPO6(:));
    % CORRECTED
    Pt58_Ckov_Corrected_RPO6 = pt58_ckov_corr_2EXP_RPO6.*m_roi;
    Pt58_Ckov_Corrected_RPO6(Pt58_Ckov_Corrected_RPO6==0)=nan;
    Pt58_Ckov_Corrected_median_RPO6(i) = nanmedian(Pt58_Ckov_Corrected_RPO6(:));
    
end

%% PT59
clear Pt59_HU_median Pt59_Ckov_Corrected_median Pt59_Ckov_Uncorrected_median Pt59_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt59_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt59_GL_roi_masks(:,:,i);

    % HU 
    Pt59_HU = Pt59_CT_HU_Map_RPO.*m_roi; 
    Pt59_HU(Pt59_HU==0)=nan;
    Pt59_HU_median(i) = nanmedian(Pt59_HU(:));
    % DOSE
    Pt59_Dose_RPO6 = Pt59_registered_tp_RPO_6.*m_roi; 
    Pt59_Dose_RPO6 (Pt59_Dose_RPO6 ==0)=nan;
    Pt59_Dose_median_RPO6 (i) = nanmedian(Pt59_Dose_RPO6 (:));
    % UNCORRECTED
    Pt59_Ckov_Uncorrected_RPO6 = Pt59_Ckov_DoseNorm_th_c_RPO_6(:,:,2).*m_roi;
    Pt59_Ckov_Uncorrected_RPO6(Pt59_Ckov_Uncorrected_RPO6==0)=nan;
    Pt59_Ckov_Uncorrected_median_RPO6(i) = nanmedian(Pt59_Ckov_Uncorrected_RPO6(:));
    % CORRECTED
    Pt59_Ckov_Corrected_RPO6 = pt59_ckov_corr_2EXP_RPO6.*m_roi;
    Pt59_Ckov_Corrected_RPO6(Pt59_Ckov_Corrected_RPO6==0)=nan;
    Pt59_Ckov_Corrected_median_RPO6(i) = nanmedian(Pt59_Ckov_Corrected_RPO6(:));
    
end


%% Scatter and Plot all
figure(102)
clf
[ha, pos] = tight_subplot(1, 2,[.1 .1],[.2 .1],[.1 .1]);
subplot('Position', pos{1})
scatter(Pt30_HU_median(:), Pt30_Ckov_Uncorrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt31_HU_median(:), Pt31_Ckov_Uncorrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_median(:), Pt32_Ckov_Uncorrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt35_HU_median(:), Pt35_Ckov_Uncorrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt36_HU_median(:), Pt36_Ckov_Uncorrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt37_HU_median(:), Pt37_Ckov_Uncorrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_median(:), Pt39_Ckov_Uncorrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_median(:), Pt41_Ckov_Uncorrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt44_HU_median(:), Pt44_Ckov_Uncorrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_median(:), Pt45_Ckov_Uncorrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt56_HU_median(:), Pt56_Ckov_Uncorrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt58_HU_median(:), Pt58_Ckov_Uncorrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_median(:), Pt59_Ckov_Uncorrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-150 50]), 
ylim([0 6e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 12;

subplot('Position', pos{2})
scatter(Pt30_HU_median(:), Pt30_Ckov_Corrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt31_HU_median(:), Pt31_Ckov_Corrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_median(:), Pt32_Ckov_Corrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt35_HU_median(:), Pt35_Ckov_Corrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt36_HU_median(:), Pt36_Ckov_Corrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt37_HU_median(:), Pt37_Ckov_Corrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_median(:), Pt39_Ckov_Corrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_median(:), Pt41_Ckov_Corrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt44_HU_median(:), Pt44_Ckov_Corrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_median(:), Pt45_Ckov_Corrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt56_HU_median(:), Pt56_Ckov_Corrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt58_HU_median(:), Pt58_Ckov_Corrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_median(:), Pt59_Ckov_Corrected_median_RPO6(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-150 50]), 
ylim([0 9e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 12;

AllPt_DoseNorm_Uncorrected_Medians_RPO6 = [Pt30_Ckov_Uncorrected_median_RPO6,...
    Pt31_Ckov_Uncorrected_median_RPO6, Pt32_Ckov_Uncorrected_median_RPO6,...
    Pt35_Ckov_Uncorrected_median_RPO6, Pt36_Ckov_Uncorrected_median_RPO6,...
    Pt37_Ckov_Uncorrected_median_RPO6, Pt39_Ckov_Uncorrected_median_RPO6,...
    Pt41_Ckov_Uncorrected_median_RPO6, Pt44_Ckov_Uncorrected_median_RPO6,...
    Pt45_Ckov_Uncorrected_median_RPO6, Pt56_Ckov_Uncorrected_median_RPO6,...
    Pt58_Ckov_Uncorrected_median_RPO6, Pt59_Ckov_Uncorrected_median_RPO6];
    
AllPt_DoseNorm_Corrected_Medians_RPO6 = [Pt30_Ckov_Corrected_median_RPO6,...
    Pt31_Ckov_Corrected_median_RPO6, Pt32_Ckov_Corrected_median_RPO6,...
    Pt35_Ckov_Corrected_median_RPO6, Pt36_Ckov_Corrected_median_RPO6,...
    Pt37_Ckov_Corrected_median_RPO6, Pt39_Ckov_Corrected_median_RPO6,...
    Pt41_Ckov_Corrected_median_RPO6, Pt44_Ckov_Corrected_median_RPO6,...
    Pt45_Ckov_Corrected_median_RPO6, Pt56_Ckov_Corrected_median_RPO6,...
    Pt58_Ckov_Corrected_median_RPO6, Pt59_Ckov_Corrected_median_RPO6,];

mu_uncorr_RPO6 = mean(AllPt_DoseNorm_Uncorrected_Medians_RPO6)
std_uncorr_RPO6 = std(AllPt_DoseNorm_Uncorrected_Medians_RPO6)
cov_uncorr_RPO6 = std_uncorr_RPO6/mu_uncorr_RPO6

mu_corr_RPO6 = mean(AllPt_DoseNorm_Corrected_Medians_RPO6)
std_corr_RPO6 = std(AllPt_DoseNorm_Corrected_Medians_RPO6)
cov_corr_RPO6 = std_corr_RPO6/mu_corr_RPO6

%% RPO 10 

%% PT32
clear Pt32_HU_median Pt32_Ckov_Corrected_median Pt32_Ckov_Uncorrected_median Pt32_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt32_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt32_GL_roi_masks(:,:,i);

    % HU 
    Pt32_HU = Pt32_CT_HU_Map_RPO.*m_roi; 
    Pt32_HU(Pt32_HU==0)=nan;
    Pt32_HU_median(i) = nanmedian(Pt32_HU(:));
    % DOSE
    Pt32_Dose_RPO10 = Pt32_registered_tp_RPO_10.*m_roi; 
    Pt32_Dose_RPO10 (Pt32_Dose_RPO10 ==0)=nan;
    Pt32_Dose_median_RPO10 (i) = nanmedian(Pt32_Dose_RPO10 (:));
    % UNCORRECTED
    Pt32_Ckov_Uncorrected_RPO10 = Pt32_Ckov_DoseNorm_th_c_RPO_10(:,:,2).*m_roi;
    Pt32_Ckov_Uncorrected_RPO10(Pt32_Ckov_Uncorrected_RPO10==0)=nan;
    Pt32_Ckov_Uncorrected_median_RPO10(i) = nanmedian(Pt32_Ckov_Uncorrected_RPO10(:));
    % CORRECTED
    Pt32_Ckov_Corrected_RPO10 = pt32_ckov_corr_2EXP_RPO10.*m_roi;
    Pt32_Ckov_Corrected_RPO10(Pt32_Ckov_Corrected_RPO10==0)=nan;
    Pt32_Ckov_Corrected_median_RPO10(i) = nanmedian(Pt32_Ckov_Corrected_RPO10(:));
    
end

%% PT39

clear Pt39_HU_median Pt39_Ckov_Corrected_median Pt39_Ckov_Uncorrected_median Pt39_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt39_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt39_GL_roi_masks(:,:,i);

    % HU 
    Pt39_HU = Pt39_CT_HU_Map_RPO.*m_roi; 
    Pt39_HU(Pt39_HU==0)=nan;
    Pt39_HU_median(i) = nanmedian(Pt39_HU(:));
    % DOSE
    Pt39_Dose_RPO10 = Pt39_registered_tp_RPO_10.*m_roi; 
    Pt39_Dose_RPO10 (Pt39_Dose_RPO10 ==0)=nan;
    Pt39_Dose_median_RPO10 (i) = nanmedian(Pt39_Dose_RPO10 (:));
    % UNCORRECTED
    Pt39_Ckov_Uncorrected_RPO10 = Pt39_Ckov_DoseNorm_th_c_RPO_10(:,:,1).*m_roi;
    Pt39_Ckov_Uncorrected_RPO10(Pt39_Ckov_Uncorrected_RPO10==0)=nan;
    Pt39_Ckov_Uncorrected_median_RPO10(i) = nanmedian(Pt39_Ckov_Uncorrected_RPO10(:));
    % CORRECTED
    Pt39_Ckov_Corrected_RPO10 = pt39_ckov_corr_2EXP_RPO10.*m_roi;
    Pt39_Ckov_Corrected_RPO10(Pt39_Ckov_Corrected_RPO10==0)=nan;
    Pt39_Ckov_Corrected_median_RPO10(i) = nanmedian(Pt39_Ckov_Corrected_RPO10(:));
    
end

%% PT41
clear Pt41_HU_median Pt41_Ckov_Corrected_median Pt41_Ckov_Uncorrected_median Pt41_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt41_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt41_GL_roi_masks(:,:,i);

    % HU 
    Pt41_HU = Pt41_CT_HU_Map_RPO.*m_roi; 
    Pt41_HU(Pt41_HU==0)=nan;
    Pt41_HU_median(i) = nanmedian(Pt41_HU(:));
    % DOSE
    Pt41_Dose_RPO10 = Pt41_registered_tp_RPO_10.*m_roi; 
    Pt41_Dose_RPO10 (Pt41_Dose_RPO10 ==0)=nan;
    Pt41_Dose_median_RPO10 (i) = nanmedian(Pt41_Dose_RPO10 (:));
    % UNCORRECTED
    Pt41_Ckov_Uncorrected_RPO10 = Pt41_Ckov_DoseNorm_th_c_RPO_10(:,:,2).*m_roi;
    Pt41_Ckov_Uncorrected_RPO10(Pt41_Ckov_Uncorrected_RPO10==0)=nan;
    Pt41_Ckov_Uncorrected_median_RPO10(i) = nanmedian(Pt41_Ckov_Uncorrected_RPO10(:));
    % CORRECTED
    Pt41_Ckov_Corrected_RPO10 = pt41_ckov_corr_2EXP_RPO10.*m_roi;
    Pt41_Ckov_Corrected_RPO10(Pt41_Ckov_Corrected_RPO10==0)=nan;
    Pt41_Ckov_Corrected_median_RPO10(i) = nanmedian(Pt41_Ckov_Corrected_RPO10(:));
    
end


%% PT45
clear Pt45_HU_median Pt45_Ckov_Corrected_median Pt45_Ckov_Uncorrected_median Pt45_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt45_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt45_GL_roi_masks(:,:,i);

    % HU 
    Pt45_HU = Pt45_CT_HU_Map_RPO.*m_roi; 
    Pt45_HU(Pt45_HU==0)=nan;
    Pt45_HU_median(i) = nanmedian(Pt45_HU(:));
    % DOSE
    Pt45_Dose_RPO10 = Pt45_registered_tp_RPO_10.*m_roi; 
    Pt45_Dose_RPO10 (Pt45_Dose_RPO10 ==0)=nan;
    Pt45_Dose_median_RPO10 (i) = nanmedian(Pt45_Dose_RPO10 (:));
    % UNCORRECTED
    Pt45_Ckov_Uncorrected_RPO10 = Pt45_Ckov_DoseNorm_th_c_RPO_10(:,:,2).*m_roi;
    Pt45_Ckov_Uncorrected_RPO10(Pt45_Ckov_Uncorrected_RPO10==0)=nan;
    Pt45_Ckov_Uncorrected_median_RPO10(i) = nanmedian(Pt45_Ckov_Uncorrected_RPO10(:));
    % CORRECTED
    Pt45_Ckov_Corrected_RPO10 = pt45_ckov_corr_2EXP_RPO10.*m_roi;
    Pt45_Ckov_Corrected_RPO10(Pt45_Ckov_Corrected_RPO10==0)=nan;
    Pt45_Ckov_Corrected_median_RPO10(i) = nanmedian(Pt45_Ckov_Corrected_RPO10(:));
    
end

%% PT59
clear Pt59_HU_median Pt59_Ckov_Corrected_median Pt59_Ckov_Uncorrected_median Pt59_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt59_CT_HU_Map_RPO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt59_GL_roi_masks(:,:,i);

    % HU 
    Pt59_HU = Pt59_CT_HU_Map_RPO.*m_roi; 
    Pt59_HU(Pt59_HU==0)=nan;
    Pt59_HU_median(i) = nanmedian(Pt59_HU(:));
    % DOSE
    Pt59_Dose_RPO10 = Pt59_registered_tp_RPO_10.*m_roi; 
    Pt59_Dose_RPO10 (Pt59_Dose_RPO10 ==0)=nan;
    Pt59_Dose_median_RPO10 (i) = nanmedian(Pt59_Dose_RPO10 (:));
    % UNCORRECTED
    Pt59_Ckov_Uncorrected_RPO10 = Pt59_Ckov_DoseNorm_th_c_RPO_10(:,:,2).*m_roi;
    Pt59_Ckov_Uncorrected_RPO10(Pt59_Ckov_Uncorrected_RPO10==0)=nan;
    Pt59_Ckov_Uncorrected_median_RPO10(i) = nanmedian(Pt59_Ckov_Uncorrected_RPO10(:));
    % CORRECTED
    Pt59_Ckov_Corrected_RPO10 = pt59_ckov_corr_2EXP_RPO10.*m_roi;
    Pt59_Ckov_Corrected_RPO10(Pt59_Ckov_Corrected_RPO10==0)=nan;
    Pt59_Ckov_Corrected_median_RPO10(i) = nanmedian(Pt59_Ckov_Corrected_RPO10(:));
    
end


%% Scatter and Plot all
figure(102)
clf
[ha, pos] = tight_subplot(1, 2,[.1 .1],[.2 .1],[.1 .1]);
subplot('Position', pos{1})
scatter(Pt32_HU_median(:), Pt32_Ckov_Uncorrected_median_RPO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt39_HU_median(:), Pt39_Ckov_Uncorrected_median_RPO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_median(:), Pt41_Ckov_Uncorrected_median_RPO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_median(:), Pt45_Ckov_Uncorrected_median_RPO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_median(:), Pt59_Ckov_Uncorrected_median_RPO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-150 50]), 
ylim([0 6e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 12;

subplot('Position', pos{2})
scatter(Pt32_HU_median(:), Pt32_Ckov_Corrected_median_RPO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt39_HU_median(:), Pt39_Ckov_Corrected_median_RPO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_median(:), Pt41_Ckov_Corrected_median_RPO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_median(:), Pt45_Ckov_Corrected_median_RPO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_median(:), Pt59_Ckov_Corrected_median_RPO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-150 50]), 
ylim([0 9e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 12;

AllPt_DoseNorm_Uncorrected_Medians_RPO10 = [Pt32_Ckov_Uncorrected_median_RPO10,...
    Pt39_Ckov_Uncorrected_median_RPO10, Pt41_Ckov_Uncorrected_median_RPO10,...
    Pt45_Ckov_Uncorrected_median_RPO10, Pt59_Ckov_Uncorrected_median_RPO10];
    
AllPt_DoseNorm_Corrected_Medians_RPO10 = [Pt32_Ckov_Corrected_median_RPO10,...
    Pt39_Ckov_Corrected_median_RPO10, Pt41_Ckov_Corrected_median_RPO10,...
    Pt45_Ckov_Corrected_median_RPO10, Pt59_Ckov_Corrected_median_RPO10,];

mu_uncorr_RPO10 = mean(AllPt_DoseNorm_Uncorrected_Medians_RPO10)
std_uncorr_RPO10 = std(AllPt_DoseNorm_Uncorrected_Medians_RPO10)
cov_uncorr_RPO10 = std_uncorr_RPO10/mu_uncorr_RPO10

mu_corr_RPO10 = mean(AllPt_DoseNorm_Corrected_Medians_RPO10)
std_corr_RPO10 = std(AllPt_DoseNorm_Corrected_Medians_RPO10)
cov_corr_RPO10 = std_corr_RPO10/mu_corr_RPO10


%% PT32
clear Pt32_HU_median Pt32_Ckov_Corrected_median Pt32_Ckov_Uncorrected_median Pt32_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt32_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt32_GL_roi_masks(:,:,i);

    % HU 
    Pt32_HU = Pt32_CT_HU_Map_LAO.*m_roi; 
    Pt32_HU(Pt32_HU==0)=nan;
    Pt32_HU_median(i) = nanmedian(Pt32_HU(:));
    % DOSE
    Pt32_Dose_LAO10 = Pt32_registered_tp_LAO_10.*m_roi; 
    Pt32_Dose_LAO10 (Pt32_Dose_LAO10 ==0)=nan;
    Pt32_Dose_median_LAO10 (i) = nanmedian(Pt32_Dose_LAO10 (:));
    % UNCORRECTED
    Pt32_Ckov_Uncorrected_LAO10 = Pt32_Ckov_DoseNorm_th_c_LAO_10(:,:,2).*m_roi;
    Pt32_Ckov_Uncorrected_LAO10(Pt32_Ckov_Uncorrected_LAO10==0)=nan;
    Pt32_Ckov_Uncorrected_median_LAO10(i) = nanmedian(Pt32_Ckov_Uncorrected_LAO10(:));
    % CORRECTED
    Pt32_Ckov_Corrected_LAO10 = pt32_ckov_corr_2EXP_LAO10.*m_roi;
    Pt32_Ckov_Corrected_LAO10(Pt32_Ckov_Corrected_LAO10==0)=nan;
    Pt32_Ckov_Corrected_median_LAO10(i) = nanmedian(Pt32_Ckov_Corrected_LAO10(:));
    
end

%% PT39

clear Pt39_HU_median Pt39_Ckov_Corrected_median Pt39_Ckov_Uncorrected_median Pt39_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt39_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt39_GL_roi_masks(:,:,i);

    % HU 
    Pt39_HU = Pt39_CT_HU_Map_LAO.*m_roi; 
    Pt39_HU(Pt39_HU==0)=nan;
    Pt39_HU_median(i) = nanmedian(Pt39_HU(:));
    % DOSE
    Pt39_Dose_LAO10 = Pt39_registered_tp_LAO_10.*m_roi; 
    Pt39_Dose_LAO10 (Pt39_Dose_LAO10 ==0)=nan;
    Pt39_Dose_median_LAO10 (i) = nanmedian(Pt39_Dose_LAO10 (:));
    % UNCORRECTED
    Pt39_Ckov_Uncorrected_LAO10 = Pt39_Ckov_DoseNorm_th_c_LAO_10(:,:,1).*m_roi;
    Pt39_Ckov_Uncorrected_LAO10(Pt39_Ckov_Uncorrected_LAO10==0)=nan;
    Pt39_Ckov_Uncorrected_median_LAO10(i) = nanmedian(Pt39_Ckov_Uncorrected_LAO10(:));
    % CORRECTED
    Pt39_Ckov_Corrected_LAO10 = pt39_ckov_corr_2EXP_LAO10.*m_roi;
    Pt39_Ckov_Corrected_LAO10(Pt39_Ckov_Corrected_LAO10==0)=nan;
    Pt39_Ckov_Corrected_median_LAO10(i) = nanmedian(Pt39_Ckov_Corrected_LAO10(:));
    
end

%% PT41
clear Pt41_HU_median Pt41_Ckov_Corrected_median Pt41_Ckov_Uncorrected_median Pt41_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt41_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt41_GL_roi_masks(:,:,i);

    % HU 
    Pt41_HU = Pt41_CT_HU_Map_LAO.*m_roi; 
    Pt41_HU(Pt41_HU==0)=nan;
    Pt41_HU_median(i) = nanmedian(Pt41_HU(:));
    % DOSE
    Pt41_Dose_LAO10 = Pt41_registered_tp_LAO_10.*m_roi; 
    Pt41_Dose_LAO10 (Pt41_Dose_LAO10 ==0)=nan;
    Pt41_Dose_median_LAO10 (i) = nanmedian(Pt41_Dose_LAO10 (:));
    % UNCORRECTED
    Pt41_Ckov_Uncorrected_LAO10 = Pt41_Ckov_DoseNorm_th_c_LAO_10(:,:,2).*m_roi;
    Pt41_Ckov_Uncorrected_LAO10(Pt41_Ckov_Uncorrected_LAO10==0)=nan;
    Pt41_Ckov_Uncorrected_median_LAO10(i) = nanmedian(Pt41_Ckov_Uncorrected_LAO10(:));
    % CORRECTED
    Pt41_Ckov_Corrected_LAO10 = pt41_ckov_corr_2EXP_LAO10.*m_roi;
    Pt41_Ckov_Corrected_LAO10(Pt41_Ckov_Corrected_LAO10==0)=nan;
    Pt41_Ckov_Corrected_median_LAO10(i) = nanmedian(Pt41_Ckov_Corrected_LAO10(:));
    
end


%% PT45
clear Pt45_HU_median Pt45_Ckov_Corrected_median Pt45_Ckov_Uncorrected_median Pt45_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt45_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt45_GL_roi_masks(:,:,i);

    % HU 
    Pt45_HU = Pt45_CT_HU_Map_LAO.*m_roi; 
    Pt45_HU(Pt45_HU==0)=nan;
    Pt45_HU_median(i) = nanmedian(Pt45_HU(:));
    % DOSE
    Pt45_Dose_LAO10 = Pt45_registered_tp_LAO_10.*m_roi; 
    Pt45_Dose_LAO10 (Pt45_Dose_LAO10 ==0)=nan;
    Pt45_Dose_median_LAO10 (i) = nanmedian(Pt45_Dose_LAO10 (:));
    % UNCORRECTED
    Pt45_Ckov_Uncorrected_LAO10 = Pt45_Ckov_DoseNorm_th_c_LAO_10(:,:,2).*m_roi;
    Pt45_Ckov_Uncorrected_LAO10(Pt45_Ckov_Uncorrected_LAO10==0)=nan;
    Pt45_Ckov_Uncorrected_median_LAO10(i) = nanmedian(Pt45_Ckov_Uncorrected_LAO10(:));
    % CORRECTED
    Pt45_Ckov_Corrected_LAO10 = pt45_ckov_corr_2EXP_LAO10.*m_roi;
    Pt45_Ckov_Corrected_LAO10(Pt45_Ckov_Corrected_LAO10==0)=nan;
    Pt45_Ckov_Corrected_median_LAO10(i) = nanmedian(Pt45_Ckov_Corrected_LAO10(:));
    
end

%% PT59
clear Pt59_HU_median Pt59_Ckov_Corrected_median Pt59_Ckov_Uncorrected_median Pt59_Ckov_Uncorrected_median
for i = 1:10
%     clear m_roi
%     figure(101)
%     imagesc(Pt59_CT_HU_Map_LAO); caxis([-200 100]); colormap(cmap1); axis image; axis off;
%     title('Uncorrected')
%     h=imellipse();
%     m_roi = createMask(h);
    m_roi = Pt59_GL_roi_masks(:,:,i);

    % HU 
    Pt59_HU = Pt59_CT_HU_Map_LAO.*m_roi; 
    Pt59_HU(Pt59_HU==0)=nan;
    Pt59_HU_median(i) = nanmedian(Pt59_HU(:));
    % DOSE
    Pt59_Dose_LAO10 = Pt59_registered_tp_LAO_10.*m_roi; 
    Pt59_Dose_LAO10 (Pt59_Dose_LAO10 ==0)=nan;
    Pt59_Dose_median_LAO10 (i) = nanmedian(Pt59_Dose_LAO10 (:));
    % UNCORRECTED
    Pt59_Ckov_Uncorrected_LAO10 = Pt59_Ckov_DoseNorm_th_c_LAO_10(:,:,2).*m_roi;
    Pt59_Ckov_Uncorrected_LAO10(Pt59_Ckov_Uncorrected_LAO10==0)=nan;
    Pt59_Ckov_Uncorrected_median_LAO10(i) = nanmedian(Pt59_Ckov_Uncorrected_LAO10(:));
    % CORRECTED
    Pt59_Ckov_Corrected_LAO10 = pt59_ckov_corr_2EXP_LAO10.*m_roi;
    Pt59_Ckov_Corrected_LAO10(Pt59_Ckov_Corrected_LAO10==0)=nan;
    Pt59_Ckov_Corrected_median_LAO10(i) = nanmedian(Pt59_Ckov_Corrected_LAO10(:));
    
end


%% Scatter and Plot all
figure(102)
clf
[ha, pos] = tight_subplot(1, 2,[.1 .1],[.2 .1],[.1 .1]);
subplot('Position', pos{1})
scatter(Pt32_HU_median(:), Pt32_Ckov_Uncorrected_median_LAO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt39_HU_median(:), Pt39_Ckov_Uncorrected_median_LAO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_median(:), Pt41_Ckov_Uncorrected_median_LAO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_median(:), Pt45_Ckov_Uncorrected_median_LAO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_median(:), Pt59_Ckov_Uncorrected_median_LAO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-150 50]), 
ylim([0 6e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 12;

subplot('Position', pos{2})
scatter(Pt32_HU_median(:), Pt32_Ckov_Corrected_median_LAO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt39_HU_median(:), Pt39_Ckov_Corrected_median_LAO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_median(:), Pt41_Ckov_Corrected_median_LAO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_median(:), Pt45_Ckov_Corrected_median_LAO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_median(:), Pt59_Ckov_Corrected_median_LAO10(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor','k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-150 50]), 
ylim([0 9e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 12;

AllPt_DoseNorm_Uncorrected_Medians_LAO10 = [Pt32_Ckov_Uncorrected_median_LAO10,...
    Pt39_Ckov_Uncorrected_median_LAO10, Pt41_Ckov_Uncorrected_median_LAO10,...
    Pt45_Ckov_Uncorrected_median_LAO10, Pt59_Ckov_Uncorrected_median_LAO10];
    
AllPt_DoseNorm_Corrected_Medians_LAO10 = [Pt32_Ckov_Corrected_median_LAO10,...
    Pt39_Ckov_Corrected_median_LAO10, Pt41_Ckov_Corrected_median_LAO10,...
    Pt45_Ckov_Corrected_median_LAO10, Pt59_Ckov_Corrected_median_LAO10,];

mu_uncorr_LAO10 = mean(AllPt_DoseNorm_Uncorrected_Medians_LAO10)
std_uncorr_LAO10 = std(AllPt_DoseNorm_Uncorrected_Medians_LAO10)
cov_uncorr_LAO10 = std_uncorr_LAO10/mu_uncorr_LAO10

mu_corr_LAO10 = mean(AllPt_DoseNorm_Corrected_Medians_LAO10)
std_corr_LAO10 = std(AllPt_DoseNorm_Corrected_Medians_LAO10)
cov_corr_LAO10 = std_corr_LAO10/mu_corr_LAO10


%% patient by patient stats
Pt32_mu_uncorr_LAO10 = mean(Pt32_Ckov_Uncorrected_median_LAO10(:))
Pt32_std_uncorr_LAO10 = std(Pt32_Ckov_Uncorrected_median_LAO10(:))
Pt32_cov_uncorr_LAO10 = Pt32_std_uncorr_LAO10/Pt32_mu_uncorr_LAO10

Pt32_mu_corr_LAO10 = mean(Pt32_Ckov_Corrected_median_LAO10(:))
Pt32_std_corr_LAO10 = std(Pt32_Ckov_Corrected_median_LAO10(:))
Pt32_cov_corr_LAO10 = Pt32_std_corr_LAO10/Pt32_mu_corr_LAO10

