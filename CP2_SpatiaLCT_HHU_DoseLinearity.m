
%% Pull in the uncorrected stacks and correct them 
%patient 30
figure(299)
clf
[ha, pos] = tight_subplot(2, 3,[.001 .001],[.01 .01],[.01 .01]);
figure(300)
clf
[ha, pos] = tight_subplot(2, 3,[.001 .001],[.01 .01],[.01 .01]);
figure(301)
clf
[ha, pos] = tight_subplot(2, 3,[.001 .001],[.01 .01],[.01 .01]);
figure(302)
clf
[ha, pos] = tight_subplot(2, 3,[.001 .001],[.01 .01],[.01 .01]);

for i = 2:size(Pt30_RPO_stack,3)
    im_RPO = Pt30_RPO_stack(:,:,i).*Pt30_binim_RPO(:,:,i);
    % RPO
    figure(299)
    subplot('Position', pos{i-1})
    imagesc(im_RPO); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt30_ckov_2EXP_Corr_RPO6(:,:,i-1) = medfilt2(im_RPO.*pt30_HUcorr_2EXP_RPO6, [5 5]);
    figure(300)
    subplot('Position', pos{i-1})
    imagesc(Pt30_ckov_2EXP_Corr_RPO6(:,:,i-1)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    im_LAO = Pt30_LAO_stack(:,:,i-1).*Pt30_binim_LAO(:,:,i);
    % LAO
    figure(301)
    subplot('Position', pos{i-1})
    imagesc(im_LAO); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt30_ckov_2EXP_Corr_LAO6(:,:,i-1) = medfilt2(im_LAO.*pt30_HUcorr_2EXP_LAO6, [5 5]);
    figure(302)
    subplot('Position', pos{i-1})
    imagesc(Pt30_ckov_2EXP_Corr_LAO6(:,:,i-1)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    for j = 1:size(Pt30_GL_roi_masks,3)
        roi_u = Pt30_GL_roi_masks(:,:,j).*im_RPO;
        roi_c = Pt30_GL_roi_masks(:,:,j).*Pt30_ckov_2EXP_Corr_RPO6(:,:,i-1);
        roi_tp = Pt30_GL_roi_masks(:,:,j).*Pt30_registered_tp_RPO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt30_median_ckov_uncorr_RPO6(i-1,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt30_median_ckov_corr_RPO6_global(i-1,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt30_median_tp_RPO_6(i-1,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt30_GL_roi_masks(:,:,j).*im_LAO;
        roi_c = Pt30_GL_roi_masks(:,:,j).*Pt30_ckov_2EXP_Corr_LAO6(:,:,i-1);
        roi_tp = Pt30_GL_roi_masks(:,:,j).*Pt30_registered_tp_LAO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt30_median_ckov_uncorr_LAO6(i-1,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt30_median_ckov_corr_LAO6_global(i-1,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt30_median_tp_LAO_6(i-1,j) = median(roi_tp(roi_tp~=0));
    end
end



%% patient 31
figure(299)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(310)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(311)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(312)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);

for i = 1:size(Pt31_RPO_stack,3)
    im_RPO = Pt31_RPO_stack(:,:,i).*Pt31_binim_RPO;
    % RPO
    figure(299)
    subplot('Position', pos{i})
    imagesc(im_RPO); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt31_ckov_2EXP_Corr_RPO6(:,:,i) = medfilt2(im_RPO.*pt31_HUcorr_2EXP_RPO6, [5 5]);
    figure(310)
    subplot('Position', pos{i})
    imagesc(Pt31_ckov_2EXP_Corr_RPO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    im_LAO = Pt31_LAO_stack(:,:,i).*Pt31_binim_LAO;
    % LAO
    figure(311)
    subplot('Position', pos{i})
    imagesc(im_LAO); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt31_ckov_2EXP_Corr_LAO6(:,:,i) = medfilt2(im_LAO.*pt31_HUcorr_2EXP_LAO6, [5 5]);
    figure(312)
    subplot('Position', pos{i})
    imagesc(Pt31_ckov_2EXP_Corr_LAO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    for j = 1:size(Pt31_GL_roi_masks,3)
        roi_u = Pt31_GL_roi_masks(:,:,j).*im_RPO;
        roi_c = Pt31_GL_roi_masks(:,:,j).*Pt31_ckov_2EXP_Corr_RPO6(:,:,i);
        roi_tp = Pt31_GL_roi_masks(:,:,j).*Pt31_registered_tp_RPO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt31_median_ckov_uncorr_RPO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt31_median_ckov_corr_RPO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt31_median_tp_RPO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt31_GL_roi_masks(:,:,j).*im_LAO;
        roi_c = Pt31_GL_roi_masks(:,:,j).*Pt31_ckov_2EXP_Corr_LAO6(:,:,i);
        roi_tp = Pt31_GL_roi_masks(:,:,j).*Pt31_registered_tp_LAO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt31_median_ckov_uncorr_LAO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt31_median_ckov_corr_LAO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt31_median_tp_LAO_6(i,j) = median(roi_tp(roi_tp~=0));
    end
end

%% patient 32

figure(299)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(320)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(321)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(322)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);

figure(323)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(324)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(325)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(326)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);



for i = 1:size(Pt32_RPO_6X_stack,3)
    % RPO 6 
    im_RPO_6 = Pt32_RPO_6X_stack(:,:,i).*Pt32_binim_RPO;
    figure(299)
    subplot('Position', pos{i})
    imagesc(im_RPO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt32_ckov_2EXP_Corr_RPO6(:,:,i) = medfilt2(im_RPO_6.*pt32_HUcorr_2EXP_RPO6, [5 5]);
    figure(320)
    subplot('Position', pos{i})
    imagesc(Pt32_ckov_2EXP_Corr_RPO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % RPO 10
    im_RPO_10 = Pt32_RPO_10X_stack(:,:,i).*Pt32_binim_RPO;
    figure(321)
    subplot('Position', pos{i})
    imagesc(im_RPO_10); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt32_ckov_2EXP_Corr_RPO10(:,:,i) = medfilt2(im_RPO_10.*pt32_HUcorr_2EXP_RPO10, [5 5]);
    figure(322)
    subplot('Position', pos{i})
    imagesc(Pt32_ckov_2EXP_Corr_RPO10(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % LAO 6
    im_LAO_6 = Pt32_LAO_6X_stack(:,:,i).*Pt32_binim_LAO;
    figure(323)
    subplot('Position', pos{i})
    imagesc(im_LAO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt32_ckov_2EXP_Corr_LAO6(:,:,i) = medfilt2(im_LAO_6.*pt32_HUcorr_2EXP_LAO6, [5 5]);
    figure(324)
    subplot('Position', pos{i})
    imagesc(Pt32_ckov_2EXP_Corr_LAO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % LAO 10
    im_LAO_10 = Pt32_LAO_10X_stack(:,:,i).*Pt32_binim_LAO;
    figure(325)
    subplot('Position', pos{i})
    imagesc(im_LAO_10); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt32_ckov_2EXP_Corr_LAO10(:,:,i) = medfilt2(im_LAO_10.*pt32_HUcorr_2EXP_LAO10, [5 5]);
    figure(326)
    subplot('Position', pos{i})
    imagesc(Pt32_ckov_2EXP_Corr_LAO10(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image;

    for j = 1:size(Pt32_GL_roi_masks,3)
        roi_u = Pt32_GL_roi_masks(:,:,j).*im_RPO_6;
        roi_c = Pt32_GL_roi_masks(:,:,j).*Pt32_ckov_2EXP_Corr_RPO6(:,:,i);
        roi_tp = Pt32_GL_roi_masks(:,:,j).*Pt32_registered_tp_RPO_6;
        
        roi_u(isnan(roi_u)) = 0;
        Pt32_median_ckov_uncorr_RPO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt32_median_ckov_corr_RPO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt32_median_tp_RPO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt32_GL_roi_masks(:,:,j).*im_LAO_6;
        roi_c = Pt32_GL_roi_masks(:,:,j).*Pt32_ckov_2EXP_Corr_LAO6(:,:,i);
        roi_tp = Pt32_GL_roi_masks(:,:,j).*Pt32_registered_tp_LAO_6;
        
        roi_u(isnan(roi_u)) = 0;
        Pt32_median_ckov_uncorr_LAO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt32_median_ckov_corr_LAO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt32_median_tp_LAO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt32_GL_roi_masks(:,:,j).*im_RPO_10;
        roi_c = Pt32_GL_roi_masks(:,:,j).*Pt32_ckov_2EXP_Corr_RPO10(:,:,i);
        roi_tp = Pt32_GL_roi_masks(:,:,j).*Pt32_registered_tp_RPO_10;
        
        roi_u(isnan(roi_u)) = 0;
        Pt32_median_ckov_uncorr_RPO10(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt32_median_ckov_corr_RPO10_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt32_median_tp_RPO_10(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt32_GL_roi_masks(:,:,j).*im_LAO_10;
        roi_c = Pt32_GL_roi_masks(:,:,j).*Pt32_ckov_2EXP_Corr_LAO10(:,:,i);
        roi_tp = Pt32_GL_roi_masks(:,:,j).*Pt32_registered_tp_LAO_10;
        
        roi_u(isnan(roi_u)) = 0;
        Pt32_median_ckov_uncorr_LAO10(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt32_median_ckov_corr_LAO10_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt32_median_tp_LAO_10(i,j) = median(roi_tp(roi_tp~=0));
    end
end




%% patient 35
figure(299)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(350)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(351)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(352)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);


for i = 1:size(Pt35_RPO_stack_int_shift,3)
    % RPO 6 
    im_RPO_6 = Pt35_RPO_stack_int_shift(:,:,i).*Pt35_binim_RPO(:,:,i);
    figure(299)
    subplot('Position', pos{i})
    imagesc(im_RPO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt35_ckov_2EXP_Corr_RPO6(:,:,i) = medfilt2(im_RPO_6.*pt35_HUcorr_2EXP_RPO6, [5 5]);
    figure(350)
    subplot('Position', pos{i})
    imagesc(Pt35_ckov_2EXP_Corr_RPO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    % LAO 6
    im_LAO_6 = Pt35_LAO_stack_int_shift(:,:,i).*Pt35_binim_LAO(:,:,i);
    figure(353)
    subplot('Position', pos{i})
    imagesc(im_LAO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt35_ckov_2EXP_Corr_LAO6(:,:,i) = medfilt2(im_LAO_6.*pt35_HUcorr_2EXP_LAO6, [5 5]);
    figure(354)
    subplot('Position', pos{i})
    imagesc(Pt35_ckov_2EXP_Corr_LAO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    for j = 1:size(Pt35_GL_roi_masks,3)
        roi_u = Pt35_GL_roi_masks(:,:,j).*im_RPO_6;
        roi_c = Pt35_GL_roi_masks(:,:,j).*Pt35_ckov_2EXP_Corr_RPO6(:,:,i);
        roi_tp = Pt35_GL_roi_masks(:,:,j).*Pt35_registered_tp_RPO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt35_median_ckov_uncorr_RPO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt35_median_ckov_corr_RPO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt35_median_tp_RPO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt35_GL_roi_masks(:,:,j).*im_LAO_6;
        roi_c = Pt35_GL_roi_masks(:,:,j).*Pt35_ckov_2EXP_Corr_LAO6(:,:,i);
        roi_tp = Pt35_GL_roi_masks(:,:,j).*Pt35_registered_tp_LAO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt35_median_ckov_uncorr_LAO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt35_median_ckov_corr_LAO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt35_median_tp_LAO_6(i,j) = median(roi_tp(roi_tp~=0));
        

    end
end

%% patient 36
figure(299)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(360)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(361)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(362)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);


for i = 1:size(Pt36_RPO_stack_int_shift,3)
    % RPO 6 
    im_RPO_6 = Pt36_RPO_stack_int_shift(:,:,i).*Pt36_binim_RPO(:,:,i);
    figure(299)
    subplot('Position', pos{i})
    imagesc(im_RPO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt36_ckov_2EXP_Corr_RPO6(:,:,i) = medfilt2(im_RPO_6.*pt36_HUcorr_2EXP_RPO6, [5 5]);
    figure(360)
    subplot('Position', pos{i})
    imagesc(Pt36_ckov_2EXP_Corr_RPO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    % LAO 6
    im_LAO_6 = Pt36_LAO_stack_int_shift(:,:,i).*Pt36_binim_LAO(:,:,i);
    figure(363)
    subplot('Position', pos{i})
    imagesc(im_LAO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt36_ckov_2EXP_Corr_LAO6(:,:,i) = medfilt2(im_LAO_6.*pt36_HUcorr_2EXP_LAO6, [5 5]);
    figure(364)
    subplot('Position', pos{i})
    imagesc(Pt36_ckov_2EXP_Corr_LAO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    for j = 1:size(Pt36_GL_roi_masks,3)
        roi_u = Pt36_GL_roi_masks(:,:,j).*im_RPO_6;
        roi_c = Pt36_GL_roi_masks(:,:,j).*Pt36_ckov_2EXP_Corr_RPO6(:,:,i);
        roi_tp = Pt36_GL_roi_masks(:,:,j).*Pt36_registered_tp_RPO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt36_median_ckov_uncorr_RPO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt36_median_ckov_corr_RPO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt36_median_tp_RPO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt36_GL_roi_masks(:,:,j).*im_LAO_6;
        roi_c = Pt36_GL_roi_masks(:,:,j).*Pt36_ckov_2EXP_Corr_LAO6(:,:,i);
        roi_tp = Pt36_GL_roi_masks(:,:,j).*Pt36_registered_tp_LAO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt36_median_ckov_uncorr_LAO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt36_median_ckov_corr_LAO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt36_median_tp_LAO_6(i,j) = median(roi_tp(roi_tp~=0));
        

    end
end


%% patient 37
figure(299)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(370)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(371)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(372)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);


for i = 1:size(Pt37_RPO_stack_int_shift,3)
    % RPO 6 
    im_RPO_6 = Pt37_RPO_stack_int_shift(:,:,i).*Pt37_binim_RPO(:,:,i);
    figure(299)
    subplot('Position', pos{i})
    imagesc(im_RPO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt37_ckov_2EXP_Corr_RPO6(:,:,i) = medfilt2(im_RPO_6.*pt37_HUcorr_2EXP_RPO6, [5 5]);
    figure(370)
    subplot('Position', pos{i})
    imagesc(Pt37_ckov_2EXP_Corr_RPO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    % LAO 6
    im_LAO_6 = Pt37_LAO_stack_int_shift(:,:,i).*Pt37_binim_LAO(:,:,i);
    figure(373)
    subplot('Position', pos{i})
    imagesc(im_LAO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt37_ckov_2EXP_Corr_LAO6(:,:,i) = medfilt2(im_LAO_6.*pt37_HUcorr_2EXP_LAO6, [5 5]);
    figure(374)
    subplot('Position', pos{i})
    imagesc(Pt37_ckov_2EXP_Corr_LAO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    for j = 1:size(Pt37_GL_roi_masks,3)
        roi_u = Pt37_GL_roi_masks(:,:,j).*im_RPO_6;
        roi_c = Pt37_GL_roi_masks(:,:,j).*Pt37_ckov_2EXP_Corr_RPO6(:,:,i);
        roi_tp = Pt37_GL_roi_masks(:,:,j).*Pt37_registered_tp_RPO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt37_median_ckov_uncorr_RPO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt37_median_ckov_corr_RPO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt37_median_tp_RPO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt37_GL_roi_masks(:,:,j).*im_LAO_6;
        roi_c = Pt37_GL_roi_masks(:,:,j).*Pt37_ckov_2EXP_Corr_LAO6(:,:,i);
        roi_tp = Pt37_GL_roi_masks(:,:,j).*Pt37_registered_tp_LAO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt37_median_ckov_uncorr_LAO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt37_median_ckov_corr_LAO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt37_median_tp_LAO_6(i,j) = median(roi_tp(roi_tp~=0));
        

    end
end



%% pt39
figure(299)
clf
[ha, pos] = tight_subplot(3, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(390)
clf
[ha, pos] = tight_subplot(3, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(391)
clf
[ha, pos] = tight_subplot(3, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(392)
clf
[ha, pos] = tight_subplot(3, 5,[.001 .001],[.01 .01],[.01 .01]);

figure(393)
clf
[ha, pos] = tight_subplot(3, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(394)
clf
[ha, pos] = tight_subplot(3, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(395)
clf
[ha, pos] = tight_subplot(3, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(396)
clf
[ha, pos] = tight_subplot(3, 5,[.001 .001],[.01 .01],[.01 .01]);



for i = 1:size(Pt39_RPO_6X_stack_int_shift,3)
    % RPO 6 
    im_RPO_6 = Pt39_RPO_6X_stack_int_shift(:,:,i).*Pt39_binim_RPO(:,:,i);
    figure(299)
    subplot('Position', pos{i})
    imagesc(im_RPO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt39_ckov_2EXP_Corr_RPO6(:,:,i) = medfilt2(im_RPO_6.*pt39_HUcorr_2EXP_RPO6, [5 5]);
    figure(390)
    subplot('Position', pos{i})
    imagesc(Pt39_ckov_2EXP_Corr_RPO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % RPO 10
    im_RPO_10 = Pt39_RPO_10X_stack_int_shift(:,:,i).*Pt39_binim_RPO(:,:,i);
    figure(391)
    subplot('Position', pos{i})
    imagesc(im_RPO_10); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt39_ckov_2EXP_Corr_RPO10(:,:,i) = medfilt2(im_RPO_10.*pt39_HUcorr_2EXP_RPO10, [5 5]);
    figure(392)
    subplot('Position', pos{i})
    imagesc(Pt39_ckov_2EXP_Corr_RPO10(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % LAO 6
    im_LAO_6 = Pt39_LAO_6X_stack_int_shift(:,:,i).*Pt39_binim_LAO(:,:,i);
    figure(393)
    subplot('Position', pos{i})
    imagesc(im_LAO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt39_ckov_2EXP_Corr_LAO6(:,:,i) = medfilt2(im_LAO_6.*pt39_HUcorr_2EXP_LAO6, [5 5]);
    figure(394)
    subplot('Position', pos{i})
    imagesc(Pt39_ckov_2EXP_Corr_LAO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % LAO 10
    im_LAO_10 = Pt39_LAO_10X_stack_int_shift(:,:,i).*Pt39_binim_LAO(:,:,i);
    figure(395)
    subplot('Position', pos{i})
    imagesc(im_LAO_10); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt39_ckov_2EXP_Corr_LAO10(:,:,i) = medfilt2(im_LAO_10.*pt39_HUcorr_2EXP_LAO10, [5 5]);
    figure(396)
    subplot('Position', pos{i})
    imagesc(Pt39_ckov_2EXP_Corr_LAO10(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image;

    for j = 1:size(Pt39_GL_roi_masks,3)
        roi_u = Pt39_GL_roi_masks(:,:,j).*im_RPO_6;
        roi_c = Pt39_GL_roi_masks(:,:,j).*Pt39_ckov_2EXP_Corr_RPO6(:,:,i);
        roi_tp = Pt39_GL_roi_masks(:,:,j).*Pt39_registered_tp_RPO_6;
        
        roi_u(isnan(roi_u)) = 0;
        Pt39_median_ckov_uncorr_RPO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt39_median_ckov_corr_RPO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt39_median_tp_RPO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt39_GL_roi_masks(:,:,j).*im_LAO_6;
        roi_c = Pt39_GL_roi_masks(:,:,j).*Pt39_ckov_2EXP_Corr_LAO6(:,:,i);
        roi_tp = Pt39_GL_roi_masks(:,:,j).*Pt39_registered_tp_LAO_6;
        
        roi_u(isnan(roi_u)) = 0;
        Pt39_median_ckov_uncorr_LAO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt39_median_ckov_corr_LAO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt39_median_tp_LAO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt39_GL_roi_masks(:,:,j).*im_RPO_10;
        roi_c = Pt39_GL_roi_masks(:,:,j).*Pt39_ckov_2EXP_Corr_RPO10(:,:,i);
        roi_tp = Pt39_GL_roi_masks(:,:,j).*Pt39_registered_tp_RPO_10;
        
        roi_u(isnan(roi_u)) = 0;
        Pt39_median_ckov_uncorr_RPO10(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt39_median_ckov_corr_RPO10_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt39_median_tp_RPO_10(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt39_GL_roi_masks(:,:,j).*im_LAO_10;
        roi_c = Pt39_GL_roi_masks(:,:,j).*Pt39_ckov_2EXP_Corr_LAO10(:,:,i);
        roi_tp = Pt39_GL_roi_masks(:,:,j).*Pt39_registered_tp_LAO_10;
        
        roi_u(isnan(roi_u)) = 0;
        Pt39_median_ckov_uncorr_LAO10(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt39_median_ckov_corr_LAO10_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt39_median_tp_LAO_10(i,j) = median(roi_tp(roi_tp~=0));
    end
end


%% patient 41

figure(299)
clf
[ha, pos] = tight_subplot(3, 6,[.001 .001],[.01 .01],[.01 .01]);
figure(410)
clf
[ha, pos] = tight_subplot(3, 6,[.001 .001],[.01 .01],[.01 .01]);
figure(411)
clf
[ha, pos] = tight_subplot(3, 6,[.001 .001],[.01 .01],[.01 .01]);
figure(412)
clf
[ha, pos] = tight_subplot(3, 6,[.001 .001],[.01 .01],[.01 .01]);

figure(413)
clf
[ha, pos] = tight_subplot(3, 6,[.001 .001],[.01 .01],[.01 .01]);
figure(414)
clf
[ha, pos] = tight_subplot(3, 6,[.001 .001],[.01 .01],[.01 .01]);
figure(415)
clf
[ha, pos] = tight_subplot(3, 6,[.001 .001],[.01 .01],[.01 .01]);
figure(416)
clf
[ha, pos] = tight_subplot(3, 6,[.001 .001],[.01 .01],[.01 .01]);



for i = 1:size(Pt41_RPO_6X_stack,3)
    % RPO 6 
    im_RPO_6 = Pt41_RPO_6X_stack(:,:,i).*Pt41_binim_RPO(:,:,i);
    figure(299)
    subplot('Position', pos{i})
    imagesc(im_RPO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt41_ckov_2EXP_Corr_RPO6(:,:,i) = medfilt2(im_RPO_6.*pt41_HUcorr_2EXP_RPO6, [5 5]);
    figure(410)
    subplot('Position', pos{i})
    imagesc(Pt41_ckov_2EXP_Corr_RPO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % RPO 10
    im_RPO_10 = Pt41_RPO_10X_stack(:,:,i).*Pt41_binim_RPO(:,:,i);
    figure(411)
    subplot('Position', pos{i})
    imagesc(im_RPO_10); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt41_ckov_2EXP_Corr_RPO10(:,:,i) = medfilt2(im_RPO_10.*pt41_HUcorr_2EXP_RPO10, [5 5]);
    figure(412)
    subplot('Position', pos{i})
    imagesc(Pt41_ckov_2EXP_Corr_RPO10(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % LAO 6
    im_LAO_6 = Pt41_LAO_6X_stack(:,:,i).*Pt41_binim_LAO(:,:,i);
    figure(413)
    subplot('Position', pos{i})
    imagesc(im_LAO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt41_ckov_2EXP_Corr_LAO6(:,:,i) = medfilt2(im_LAO_6.*pt41_HUcorr_2EXP_LAO6, [5 5]);
    figure(414)
    subplot('Position', pos{i})
    imagesc(Pt41_ckov_2EXP_Corr_LAO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % LAO 10
    im_LAO_10 = Pt41_LAO_10X_stack(:,:,i).*Pt41_binim_LAO(:,:,i);
    figure(415)
    subplot('Position', pos{i})
    imagesc(im_LAO_10); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt41_ckov_2EXP_Corr_LAO10(:,:,i) = medfilt2(im_LAO_10.*pt41_HUcorr_2EXP_LAO10, [5 5]);
    figure(416)
    subplot('Position', pos{i})
    imagesc(Pt41_ckov_2EXP_Corr_LAO10(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image;

    for j = 1:size(Pt41_GL_roi_masks,3)
        roi_u = Pt41_GL_roi_masks(:,:,j).*im_RPO_6;
        roi_c = Pt41_GL_roi_masks(:,:,j).*Pt41_ckov_2EXP_Corr_RPO6(:,:,i);
        roi_tp = Pt41_GL_roi_masks(:,:,j).*Pt41_registered_tp_RPO_6;
        
        roi_u(isnan(roi_u)) = 0;
        Pt41_median_ckov_uncorr_RPO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt41_median_ckov_corr_RPO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt41_median_tp_RPO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt41_GL_roi_masks(:,:,j).*im_LAO_6;
        roi_c = Pt41_GL_roi_masks(:,:,j).*Pt41_ckov_2EXP_Corr_LAO6(:,:,i);
        roi_tp = Pt41_GL_roi_masks(:,:,j).*Pt41_registered_tp_LAO_6;
        
        roi_u(isnan(roi_u)) = 0;
        Pt41_median_ckov_uncorr_LAO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt41_median_ckov_corr_LAO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt41_median_tp_LAO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt41_GL_roi_masks(:,:,j).*im_RPO_10;
        roi_c = Pt41_GL_roi_masks(:,:,j).*Pt41_ckov_2EXP_Corr_RPO10(:,:,i);
        roi_tp = Pt41_GL_roi_masks(:,:,j).*Pt41_registered_tp_RPO_10;
        
        roi_u(isnan(roi_u)) = 0;
        Pt41_median_ckov_uncorr_RPO10(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt41_median_ckov_corr_RPO10_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt41_median_tp_RPO_10(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt41_GL_roi_masks(:,:,j).*im_LAO_10;
        roi_c = Pt41_GL_roi_masks(:,:,j).*Pt41_ckov_2EXP_Corr_LAO10(:,:,i);
        roi_tp = Pt41_GL_roi_masks(:,:,j).*Pt41_registered_tp_LAO_10;
        
        roi_u(isnan(roi_u)) = 0;
        Pt41_median_ckov_uncorr_LAO10(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt41_median_ckov_corr_LAO10_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt41_median_tp_LAO_10(i,j) = median(roi_tp(roi_tp~=0));
    end
end

%% patient 44
figure(299)
clf
[ha, pos] = tight_subplot(2, 6,[.001 .001],[.01 .01],[.01 .01]);
figure(440)
clf
[ha, pos] = tight_subplot(2, 6,[.001 .001],[.01 .01],[.01 .01]);
figure(441)
clf
[ha, pos] = tight_subplot(2, 6,[.001 .001],[.01 .01],[.01 .01]);
figure(442)
clf
[ha, pos] = tight_subplot(2, 6,[.001 .001],[.01 .01],[.01 .01]);


for i = 1:size(Pt44_Ckov_RPO_stack,3)
    % RPO 6 
    im_RPO_6 = Pt44_Ckov_RPO_stack(:,:,i).*Pt44_binim_RPO(:,:,i);
    figure(299)
    subplot('Position', pos{i})
    imagesc(im_RPO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt44_ckov_2EXP_Corr_RPO6(:,:,i) = medfilt2(im_RPO_6.*pt44_HUcorr_2EXP_RPO6, [5 5]);
    figure(440)
    subplot('Position', pos{i})
    imagesc(Pt44_ckov_2EXP_Corr_RPO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    % LAO 6
    im_LAO_6 = Pt44_Ckov_LAO_stack(:,:,i).*Pt44_binim_LAO(:,:,i);
    figure(443)
    subplot('Position', pos{i})
    imagesc(im_LAO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt44_ckov_2EXP_Corr_LAO6(:,:,i) = medfilt2(im_LAO_6.*pt44_HUcorr_2EXP_LAO6, [5 5]);
    figure(444)
    subplot('Position', pos{i})
    imagesc(Pt44_ckov_2EXP_Corr_LAO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    for j = 1:size(Pt44_GL_roi_masks,3)
        roi_u = Pt44_GL_roi_masks(:,:,j).*im_RPO_6;
        roi_c = Pt44_GL_roi_masks(:,:,j).*Pt44_ckov_2EXP_Corr_RPO6(:,:,i);
        roi_tp = Pt44_GL_roi_masks(:,:,j).*Pt44_registered_tp_RPO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt44_median_ckov_uncorr_RPO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt44_median_ckov_corr_RPO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt44_median_tp_RPO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt44_GL_roi_masks(:,:,j).*im_LAO_6;
        roi_c = Pt44_GL_roi_masks(:,:,j).*Pt44_ckov_2EXP_Corr_LAO6(:,:,i);
        roi_tp = Pt44_GL_roi_masks(:,:,j).*Pt44_registered_tp_LAO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt44_median_ckov_uncorr_LAO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt44_median_ckov_corr_LAO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt44_median_tp_LAO_6(i,j) = median(roi_tp(roi_tp~=0));
        

    end
end

%% patient 45
figure(299)
clf
[ha, pos] = tight_subplot(2, 4,[.001 .001],[.01 .01],[.01 .01]);
figure(450)
clf
[ha, pos] = tight_subplot(2, 4,[.001 .001],[.01 .01],[.01 .01]);
figure(451)
clf
[ha, pos] = tight_subplot(2, 4,[.001 .001],[.01 .01],[.01 .01]);
figure(452)
clf
[ha, pos] = tight_subplot(2, 4,[.001 .001],[.01 .01],[.01 .01]);

figure(453)
clf
[ha, pos] = tight_subplot(2, 4,[.001 .001],[.01 .01],[.01 .01]);
figure(454)
clf
[ha, pos] = tight_subplot(2, 4,[.001 .001],[.01 .01],[.01 .01]);
figure(455)
clf
[ha, pos] = tight_subplot(2, 4,[.001 .001],[.01 .01],[.01 .01]);
figure(456)
clf
[ha, pos] = tight_subplot(2, 4,[.001 .001],[.01 .01],[.01 .01]);



for i = 1:size(Pt45_RPO_6X_stack,3)
    % RPO 6 
    im_RPO_6 = Pt45_RPO_6X_stack(:,:,i).*Pt45_binim_RPO(:,:,i);
    figure(299)
    subplot('Position', pos{i})
    imagesc(im_RPO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt45_ckov_2EXP_Corr_RPO6(:,:,i) = medfilt2(im_RPO_6.*pt45_HUcorr_2EXP_RPO6, [5 5]);
    figure(450)
    subplot('Position', pos{i})
    imagesc(Pt45_ckov_2EXP_Corr_RPO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % RPO 10
    im_RPO_10 = Pt45_RPO_10X_stack(:,:,i).*Pt45_binim_RPO(:,:,i);
    figure(451)
    subplot('Position', pos{i})
    imagesc(im_RPO_10); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt45_ckov_2EXP_Corr_RPO10(:,:,i) = medfilt2(im_RPO_10.*pt45_HUcorr_2EXP_RPO10, [5 5]);
    figure(452)
    subplot('Position', pos{i})
    imagesc(Pt45_ckov_2EXP_Corr_RPO10(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % LAO 6
    im_LAO_6 = Pt45_LAO_6X_stack(:,:,i).*Pt45_binim_LAO(:,:,i);
    figure(453)
    subplot('Position', pos{i})
    imagesc(im_LAO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt45_ckov_2EXP_Corr_LAO6(:,:,i) = medfilt2(im_LAO_6.*pt45_HUcorr_2EXP_LAO6, [5 5]);
    figure(454)
    subplot('Position', pos{i})
    imagesc(Pt45_ckov_2EXP_Corr_LAO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % LAO 10
    im_LAO_10 = Pt45_LAO_10X_stack(:,:,i).*Pt45_binim_LAO(:,:,i);
    figure(455)
    subplot('Position', pos{i})
    imagesc(im_LAO_10); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt45_ckov_2EXP_Corr_LAO10(:,:,i) = medfilt2(im_LAO_10.*pt45_HUcorr_2EXP_LAO10, [5 5]);
    figure(456)
    subplot('Position', pos{i})
    imagesc(Pt45_ckov_2EXP_Corr_LAO10(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image;

    for j = 1:size(Pt45_GL_roi_masks,3)
        roi_u = Pt45_GL_roi_masks(:,:,j).*im_RPO_6;
        roi_c = Pt45_GL_roi_masks(:,:,j).*Pt45_ckov_2EXP_Corr_RPO6(:,:,i);
        roi_tp = Pt45_GL_roi_masks(:,:,j).*Pt45_registered_tp_RPO_6;
        
        roi_u(isnan(roi_u)) = 0;
        Pt45_median_ckov_uncorr_RPO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt45_median_ckov_corr_RPO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt45_median_tp_RPO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt45_GL_roi_masks(:,:,j).*im_LAO_6;
        roi_c = Pt45_GL_roi_masks(:,:,j).*Pt45_ckov_2EXP_Corr_LAO6(:,:,i);
        roi_tp = Pt45_GL_roi_masks(:,:,j).*Pt45_registered_tp_LAO_6;
        
        roi_u(isnan(roi_u)) = 0;
        Pt45_median_ckov_uncorr_LAO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt45_median_ckov_corr_LAO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt45_median_tp_LAO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt45_GL_roi_masks(:,:,j).*im_RPO_10;
        roi_c = Pt45_GL_roi_masks(:,:,j).*Pt45_ckov_2EXP_Corr_RPO10(:,:,i);
        roi_tp = Pt45_GL_roi_masks(:,:,j).*Pt45_registered_tp_RPO_10;
        
        roi_u(isnan(roi_u)) = 0;
        Pt45_median_ckov_uncorr_RPO10(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt45_median_ckov_corr_RPO10_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt45_median_tp_RPO_10(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt45_GL_roi_masks(:,:,j).*im_LAO_10;
        roi_c = Pt45_GL_roi_masks(:,:,j).*Pt45_ckov_2EXP_Corr_LAO10(:,:,i);
        roi_tp = Pt45_GL_roi_masks(:,:,j).*Pt45_registered_tp_LAO_10;
        
        roi_u(isnan(roi_u)) = 0;
        Pt45_median_ckov_uncorr_LAO10(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt45_median_ckov_corr_LAO10_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt45_median_tp_LAO_10(i,j) = median(roi_tp(roi_tp~=0));
    end
end


%% patient 56
figure(299)
clf
[ha, pos] = tight_subplot(1, 4,[.001 .001],[.01 .01],[.01 .01]);
figure(560)
clf
[ha, pos] = tight_subplot(1, 4,[.001 .001],[.01 .01],[.01 .01]);
figure(561)
clf
[ha, pos] = tight_subplot(1, 4,[.001 .001],[.01 .01],[.01 .01]);
figure(562)
clf
[ha, pos] = tight_subplot(1, 4,[.001 .001],[.01 .01],[.01 .01]);


for i = 1:size(Pt56_RPO_stack,3)
    % RPO 6 
    im_RPO_6 = Pt56_RPO_stack(:,:,i).*Pt56_binim_RPO(:,:,i);
    figure(299)
    subplot('Position', pos{i})
    imagesc(im_RPO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt56_ckov_2EXP_Corr_RPO6(:,:,i) = medfilt2(im_RPO_6.*pt56_HUcorr_2EXP_RPO6, [5 5]);
    figure(560)
    subplot('Position', pos{i})
    imagesc(Pt56_ckov_2EXP_Corr_RPO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    % LAO 6
    im_LAO_6 = Pt56_LAO_stack(:,:,i).*Pt56_binim_LAO(:,:,i);
    figure(563)
    subplot('Position', pos{i})
    imagesc(im_LAO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt56_ckov_2EXP_Corr_LAO6(:,:,i) = medfilt2(im_LAO_6.*pt56_HUcorr_2EXP_LAO6, [5 5]);
    figure(564)
    subplot('Position', pos{i})
    imagesc(Pt56_ckov_2EXP_Corr_LAO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    for j = 1:size(Pt56_GL_roi_masks,3)
        roi_u = Pt56_GL_roi_masks(:,:,j).*im_RPO_6;
        roi_c = Pt56_GL_roi_masks(:,:,j).*Pt56_ckov_2EXP_Corr_RPO6(:,:,i);
        roi_tp = Pt56_GL_roi_masks(:,:,j).*Pt56_registered_tp_RPO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt56_median_ckov_uncorr_RPO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt56_median_ckov_corr_RPO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt56_median_tp_RPO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt56_GL_roi_masks(:,:,j).*im_LAO_6;
        roi_c = Pt56_GL_roi_masks(:,:,j).*Pt56_ckov_2EXP_Corr_LAO6(:,:,i);
        roi_tp = Pt56_GL_roi_masks(:,:,j).*Pt56_registered_tp_LAO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt56_median_ckov_uncorr_LAO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt56_median_ckov_corr_LAO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt56_median_tp_LAO_6(i,j) = median(roi_tp(roi_tp~=0));
        

    end
end

%% pt58

figure(299)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(580)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(581)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);
figure(582)
clf
[ha, pos] = tight_subplot(2, 5,[.001 .001],[.01 .01],[.01 .01]);


for i = 1:size(Pt58_RPO_stack,3)
    % RPO 6 
    im_RPO_6 = Pt58_RPO_stack(:,:,i).*Pt58_binim_RPO;
    figure(299)
    subplot('Position', pos{i})
    imagesc(im_RPO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt58_ckov_2EXP_Corr_RPO6(:,:,i) = medfilt2(im_RPO_6.*pt58_HUcorr_2EXP_RPO6, [5 5]);
    figure(580)
    subplot('Position', pos{i})
    imagesc(Pt58_ckov_2EXP_Corr_RPO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    % LAO 6
    im_LAO_6 = Pt58_LAO_stack(:,:,i).*Pt58_binim_LAO;
    figure(583)
    subplot('Position', pos{i})
    imagesc(im_LAO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt58_ckov_2EXP_Corr_LAO6(:,:,i) = medfilt2(im_LAO_6.*pt58_HUcorr_2EXP_LAO6, [5 5]);
    figure(584)
    subplot('Position', pos{i})
    imagesc(Pt58_ckov_2EXP_Corr_LAO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;

    for j = 1:size(Pt58_GL_roi_masks,3)
        roi_u = Pt58_GL_roi_masks(:,:,j).*im_RPO_6;
        roi_c = Pt58_GL_roi_masks(:,:,j).*Pt58_ckov_2EXP_Corr_RPO6(:,:,i);
        roi_tp = Pt58_GL_roi_masks(:,:,j).*Pt58_registered_tp_RPO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt58_median_ckov_uncorr_RPO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt58_median_ckov_corr_RPO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt58_median_tp_RPO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt58_GL_roi_masks(:,:,j).*im_LAO_6;
        roi_c = Pt58_GL_roi_masks(:,:,j).*Pt58_ckov_2EXP_Corr_LAO6(:,:,i);
        roi_tp = Pt58_GL_roi_masks(:,:,j).*Pt58_registered_tp_LAO;
        
        roi_u(isnan(roi_u)) = 0;
        Pt58_median_ckov_uncorr_LAO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt58_median_ckov_corr_LAO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt58_median_tp_LAO_10(i,j) = median(roi_tp(roi_tp~=0));
        

    end
end



%% patient 59
figure(299)
clf
[ha, pos] = tight_subplot(1, 2,[.001 .001],[.01 .01],[.01 .01]);
figure(590)
clf
[ha, pos] = tight_subplot(1, 2,[.001 .001],[.01 .01],[.01 .01]);
figure(591)
clf
[ha, pos] = tight_subplot(1, 2,[.001 .001],[.01 .01],[.01 .01]);
figure(592)
clf
[ha, pos] = tight_subplot(1, 2,[.001 .001],[.01 .01],[.01 .01]);

figure(593)
clf
[ha, pos] = tight_subplot(1, 2,[.001 .001],[.01 .01],[.01 .01]);
figure(594)
clf
[ha, pos] = tight_subplot(1, 2,[.001 .001],[.01 .01],[.01 .01]);
figure(595)
clf
[ha, pos] = tight_subplot(1, 2,[.001 .001],[.01 .01],[.01 .01]);
figure(596)
clf
[ha, pos] = tight_subplot(1, 2,[.001 .001],[.01 .01],[.01 .01]);



for i = 1:size(Pt59_RPO_6X_stack,3)
    % RPO 6 
    im_RPO_6 = Pt59_RPO_6X_stack(:,:,i).*Pt59_binim_RPO(:,:,i);
    figure(299)
    subplot('Position', pos{i})
    imagesc(im_RPO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt59_ckov_2EXP_Corr_RPO6(:,:,i) = medfilt2(im_RPO_6.*pt59_HUcorr_2EXP_RPO6, [5 5]);
    figure(590)
    subplot('Position', pos{i})
    imagesc(Pt59_ckov_2EXP_Corr_RPO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % RPO 10
    im_RPO_10 = Pt59_RPO_10X_stack(:,:,i).*Pt59_binim_RPO(:,:,i);
    figure(591)
    subplot('Position', pos{i})
    imagesc(im_RPO_10); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
  
    Pt59_ckov_2EXP_Corr_RPO10(:,:,i) = medfilt2(im_RPO_10.*pt59_HUcorr_2EXP_RPO10, [5 5]);
    figure(592)
    subplot('Position', pos{i})
    imagesc(Pt59_ckov_2EXP_Corr_RPO10(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % LAO 6
    im_LAO_6 = Pt59_LAO_6X_stack(:,:,i).*Pt59_binim_LAO(:,:,i);
    figure(593)
    subplot('Position', pos{i})
    imagesc(im_LAO_6); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt59_ckov_2EXP_Corr_LAO6(:,:,i) = medfilt2(im_LAO_6.*pt59_HUcorr_2EXP_LAO6, [5 5]);
    figure(594)
    subplot('Position', pos{i})
    imagesc(Pt59_ckov_2EXP_Corr_LAO6(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image; axis off;
    
    % LAO 10
    im_LAO_10 = Pt59_LAO_10X_stack(:,:,i).*Pt59_binim_LAO(:,:,i);
    figure(595)
    subplot('Position', pos{i})
    imagesc(im_LAO_10); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
    
    Pt59_ckov_2EXP_Corr_LAO10(:,:,i) = medfilt2(im_LAO_10.*pt59_HUcorr_2EXP_LAO10, [5 5]);
    figure(596)
    subplot('Position', pos{i})
    imagesc(Pt59_ckov_2EXP_Corr_LAO10(:,:,i)); caxis([0 9e4]); colormap(cmap1); axis image;

    for j = 1:size(Pt59_GL_roi_masks,3)
        roi_u = Pt59_GL_roi_masks(:,:,j).*im_RPO_6;
        roi_c = Pt59_GL_roi_masks(:,:,j).*Pt59_ckov_2EXP_Corr_RPO6(:,:,i);
        roi_tp = Pt59_GL_roi_masks(:,:,j).*Pt59_registered_tp_RPO_6;
        
        roi_u(isnan(roi_u)) = 0;
        Pt59_median_ckov_uncorr_RPO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt59_median_ckov_corr_RPO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt59_median_tp_RPO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt59_GL_roi_masks(:,:,j).*im_LAO_6;
        roi_c = Pt59_GL_roi_masks(:,:,j).*Pt59_ckov_2EXP_Corr_LAO6(:,:,i);
        roi_tp = Pt59_GL_roi_masks(:,:,j).*Pt59_registered_tp_LAO_6;
        
        roi_u(isnan(roi_u)) = 0;
        Pt59_median_ckov_uncorr_LAO6(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt59_median_ckov_corr_LAO6_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt59_median_tp_LAO_6(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt59_GL_roi_masks(:,:,j).*im_RPO_10;
        roi_c = Pt59_GL_roi_masks(:,:,j).*Pt59_ckov_2EXP_Corr_RPO10(:,:,i);
        roi_tp = Pt59_GL_roi_masks(:,:,j).*Pt59_registered_tp_RPO_10;
        
        roi_u(isnan(roi_u)) = 0;
        Pt59_median_ckov_uncorr_RPO10(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt59_median_ckov_corr_RPO10_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt59_median_tp_RPO_10(i,j) = median(roi_tp(roi_tp~=0));
        
        roi_u = Pt59_GL_roi_masks(:,:,j).*im_LAO_10;
        roi_c = Pt59_GL_roi_masks(:,:,j).*Pt59_ckov_2EXP_Corr_LAO10(:,:,i);
        roi_tp = Pt59_GL_roi_masks(:,:,j).*Pt59_registered_tp_LAO_10;
        
        roi_u(isnan(roi_u)) = 0;
        Pt59_median_ckov_uncorr_LAO10(i,j) = median(roi_u(roi_u~=0));
        roi_c(isnan(roi_c)) = 0;
        Pt59_median_ckov_corr_LAO10_global(i,j) = median(roi_c(roi_c~=0));
        roi_tp(isnan(roi_tp)) = 0;
        Pt59_median_tp_LAO_10(i,j) = median(roi_tp(roi_tp~=0));
    end
end



%% PLOT ALL RPO 6X BEAMS
figure(350)
clf
[ha, pos] = tight_subplot(1, 2,[.12 .07],[.1 .06],[.05 .03]);
subplot('Position', pos{1})
scatter(Pt30_median_tp_RPO_6(1,:), Pt30_median_ckov_uncorr_RPO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkRed'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkRed'), 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt31_median_tp_RPO_6(1,:), Pt31_median_ckov_uncorr_RPO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkGoldenRod'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkGoldenRod'), 'MarkerFaceAlpha', 0.5)
scatter(Pt32_median_tp_RPO_6(1,:), Pt32_median_ckov_uncorr_RPO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt35_median_tp_RPO_6(1,:), Pt35_median_ckov_uncorr_RPO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('CadetBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('CadetBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt36_median_tp_RPO_6(1,:), Pt36_median_ckov_uncorr_RPO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('Indigo'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('Indigo'), 'MarkerFaceAlpha', 0.5)
scatter(Pt37_median_tp_RPO_6(1,:), Pt37_median_ckov_uncorr_RPO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkGreen'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkGreen'), 'MarkerFaceAlpha', 0.5)
scatter(Pt39_median_tp_RPO_6(1,:), Pt39_median_ckov_uncorr_RPO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateGray'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateGray'), 'MarkerFaceAlpha', 0.5)
scatter(Pt41_median_tp_RPO_6(1,:), Pt41_median_ckov_uncorr_RPO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt44_median_tp_RPO_6(1,:), Pt44_median_ckov_uncorr_RPO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumSeaGreen'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumSeaGreen'), 'MarkerFaceAlpha', 0.5)
scatter(Pt45_median_tp_RPO_6(1,:), Pt45_median_ckov_uncorr_RPO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumTurquoise'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumTurquoise'), 'MarkerFaceAlpha', 0.5)
scatter(Pt56_median_tp_RPO_6(1,:), Pt56_median_ckov_uncorr_RPO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumPurple'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumPurple'), 'MarkerFaceAlpha', 0.5)
scatter(Pt58_median_tp_RPO_6(1,:), Pt58_median_ckov_uncorr_RPO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkOliveGreen'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkOliveGreen'), 'MarkerFaceAlpha', 0.5)
scatter(Pt59_median_tp_RPO_6(1,:), Pt59_median_ckov_uncorr_RPO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('CornflowerBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('CornflowerBlue'), 'MarkerFaceAlpha', 0.5)
ax = gca;
ax.FontSize = 16;
xlim([0 2])
ylim([0 1.1e5])
ax.FontName = 'Calibri';
xlabel('Dose (Gy)')
ylabel('Cherenkov')


clear tp_RPO6_array uncorr_RPO6_array corr_RPO6_array
tp45 = Pt45_median_tp_RPO_6(:,[1:9]);
uc45 = Pt45_median_ckov_uncorr_RPO6(:,[1:9]);
c45 = Pt45_median_ckov_corr_RPO6_global(:,[1:9]);

tp_RPO6_array = [Pt30_median_tp_RPO_6(1,:)'; Pt31_median_tp_RPO_6(1,:)';...
    Pt32_median_tp_RPO_6(1,:)'; Pt35_median_tp_RPO_6(1,:)';...
    Pt36_median_tp_RPO_6(1,:)'; Pt37_median_tp_RPO_6(1,:)';...
    Pt39_median_tp_RPO_6(1,:)'; Pt41_median_tp_RPO_6(1,:)';...
    Pt44_median_tp_RPO_6(1,:)'; tp45(1,:)';...
    Pt56_median_tp_RPO_6(1,:)'; Pt58_median_tp_RPO_6(1,:)';...
    Pt59_median_tp_RPO_6(1,:)'];


uncorr_RPO6_array = [Pt30_median_ckov_uncorr_RPO6(1,:)'; Pt31_median_ckov_uncorr_RPO6(1,:)';...
    Pt32_median_ckov_uncorr_RPO6(1,:)'; Pt35_median_ckov_uncorr_RPO6(1,:)';...
    Pt36_median_ckov_uncorr_RPO6(1,:)'; Pt37_median_ckov_uncorr_RPO6(1,:)';...
    Pt39_median_ckov_uncorr_RPO6(1,:)'; Pt41_median_ckov_uncorr_RPO6(1,:)';...
    Pt44_median_ckov_uncorr_RPO6(1,:)'; uc45(1,:)';...
    Pt56_median_ckov_uncorr_RPO6(1,:)'; Pt58_median_ckov_uncorr_RPO6(1,:)';...
    Pt59_median_ckov_uncorr_RPO6(1,:)'];


corr_RPO6_array = [Pt30_median_ckov_corr_RPO6_global(1,:)'; Pt31_median_ckov_corr_RPO6_global(1,:)';...
    Pt32_median_ckov_corr_RPO6_global(1,:)'; Pt35_median_ckov_corr_RPO6_global(1,:)';...
    Pt36_median_ckov_corr_RPO6_global(1,:)'; Pt37_median_ckov_corr_RPO6_global(1,:)';...
    Pt39_median_ckov_corr_RPO6_global(1,:)'; Pt41_median_ckov_corr_RPO6_global(1,:)';...
    Pt44_median_ckov_corr_RPO6_global(1,:)'; c45(1,:)';...
    Pt56_median_ckov_corr_RPO6_global(1,:)'; Pt58_median_ckov_corr_RPO6_global(1,:)';...
    Pt59_median_ckov_corr_RPO6_global(1,:)'];

[fit_RPO6_Uncorr gof_RPO6_Uncorr] = fit(tp_RPO6_array(:), uncorr_RPO6_array(:), 'poly1')
xspace_RPO6_u = [0:0.001:2];
yspace_RPO6_u = fit_RPO6_Uncorr.p1.*xspace_RPO6_u + fit_RPO6_Uncorr.p2;
plot(xspace_RPO6_u, yspace_RPO6_u, 'Color', 'k')

legend('Pt30', 'Pt31', 'Pt32', 'Pt35', 'Pt36', 'Pt37',  'Pt39', 'Pt41', 'Pt44', 'Pt45',...
    'Pt56', 'Pt58','Pt59', 'RPO6X', 'Location', 'Northwest');


subplot('Position', pos{2})
scatter(Pt30_median_tp_RPO_6(1,:), Pt30_median_ckov_corr_RPO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkRed'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkRed'), 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt31_median_tp_RPO_6(1,:), Pt31_median_ckov_corr_RPO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkGoldenRod'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkGoldenRod'), 'MarkerFaceAlpha', 0.5)
scatter(Pt32_median_tp_RPO_6(1,:), Pt32_median_ckov_corr_RPO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt35_median_tp_RPO_6(1,:), Pt35_median_ckov_corr_RPO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('CadetBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('CadetBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt36_median_tp_RPO_6(1,:), Pt36_median_ckov_corr_RPO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('Indigo'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('Indigo'), 'MarkerFaceAlpha', 0.5)
scatter(Pt37_median_tp_RPO_6(1,:), Pt37_median_ckov_corr_RPO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkGreen'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkGreen'), 'MarkerFaceAlpha', 0.5)
scatter(Pt39_median_tp_RPO_6(1,:), Pt39_median_ckov_corr_RPO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateGray'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateGray'), 'MarkerFaceAlpha', 0.5)
scatter(Pt41_median_tp_RPO_6(1,:), Pt41_median_ckov_corr_RPO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt44_median_tp_RPO_6(1,:), Pt44_median_ckov_corr_RPO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumSeaGreen'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumSeaGreen'), 'MarkerFaceAlpha', 0.5)
scatter(Pt45_median_tp_RPO_6(1,:), Pt45_median_ckov_corr_RPO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumTurquoise'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumTurquoise'), 'MarkerFaceAlpha', 0.5)
scatter(Pt56_median_tp_RPO_6(1,:), Pt56_median_ckov_corr_RPO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumPurple'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumPurple'), 'MarkerFaceAlpha', 0.5)
scatter(Pt58_median_tp_RPO_6(1,:), Pt58_median_ckov_corr_RPO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkOliveGreen'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkOliveGreen'), 'MarkerFaceAlpha', 0.5)
scatter(Pt59_median_tp_RPO_6(1,:), Pt59_median_ckov_corr_RPO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('CornflowerBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('CornflowerBlue'), 'MarkerFaceAlpha', 0.5)
ax = gca;
ax.FontSize = 16;
xlim([0 2])
ylim([0 1.1e5])
ax.FontName = 'Calibri';
xlabel('Dose (Gy)')
ylabel('Cherenkov')

[fit_RPO6_Corr gof_RPO6_Corr] = fit(tp_RPO6_array(:), corr_RPO6_array(:), 'poly1')
xspace_RPO6_c = [0:0.001:2];
yspace_RPO6_c = fit_RPO6_Corr.p1.*xspace_RPO6_c + fit_RPO6_Corr.p2;
plot(xspace_RPO6_c, yspace_RPO6_c, 'Color', 'k')

legend('Pt30', 'Pt31', 'Pt32', 'Pt35', 'Pt36', 'Pt37',  'Pt39', 'Pt41', 'Pt44', 'Pt45',...
    'Pt56', 'Pt58','Pt59', 'RPO6X', 'Location', 'Northwest');
cd('E:\Exp86_Heterogeneous_HU\Pt_Registered_Data')
fig = gcf;
fig.OuterPosition = [2 331 1349 732];
filename = 'HHU_Ckov2Dose_RPO6.fig';
saveas(gcf, filename)
filename = 'HHU_Ckov2Dose_RPO6.png';
saveas(gcf, filename)


%% corr vals

%statistics for Uncorrected RPO 6X
[r_u_RPO6 p_u_RPO6] = corrcoef(tp_RPO6_array', uncorr_RPO6_array')

% statistics for Corrected RPO 6X
[r_c_RPO6 p_c_RPO6] = corrcoef(tp_RPO6_array', corr_RPO6_array')




%% PLOT ALL LAO 6X BEAMS
figure(351)
clf
[ha, pos] = tight_subplot(1, 2,[.12 .07],[.1 .06],[.05 .03]);
subplot('Position', pos{1})
scatter(Pt30_median_tp_LAO_6(1,:), Pt30_median_ckov_uncorr_LAO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkRed'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkRed'), 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt31_median_tp_LAO_6(1,:), Pt31_median_ckov_uncorr_LAO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkGoldenRod'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkGoldenRod'), 'MarkerFaceAlpha', 0.5)
scatter(Pt32_median_tp_LAO_6(1,:), Pt32_median_ckov_uncorr_LAO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt35_median_tp_LAO_6(1,:), Pt35_median_ckov_uncorr_LAO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('CadetBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('CadetBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt36_median_tp_LAO_6(1,:), Pt36_median_ckov_uncorr_LAO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('Indigo'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('Indigo'), 'MarkerFaceAlpha', 0.5)
scatter(Pt37_median_tp_LAO_6(1,:), Pt37_median_ckov_uncorr_LAO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkGreen'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkGreen'), 'MarkerFaceAlpha', 0.5)
scatter(Pt39_median_tp_LAO_6(1,:), Pt39_median_ckov_uncorr_LAO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateGray'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateGray'), 'MarkerFaceAlpha', 0.5)
scatter(Pt41_median_tp_LAO_6(1,:), Pt41_median_ckov_uncorr_LAO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt44_median_tp_LAO_6(1,:), Pt44_median_ckov_uncorr_LAO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumSeaGreen'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumSeaGreen'), 'MarkerFaceAlpha', 0.5)
scatter(Pt45_median_tp_LAO_6(1,:), Pt45_median_ckov_uncorr_LAO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumTurquoise'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumTurquoise'), 'MarkerFaceAlpha', 0.5)
scatter(Pt56_median_tp_LAO_6(1,:), Pt56_median_ckov_uncorr_LAO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumPurple'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumPurple'), 'MarkerFaceAlpha', 0.5)
scatter(Pt58_median_tp_LAO_6(1,:), Pt58_median_ckov_uncorr_LAO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkOliveGreen'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkOliveGreen'), 'MarkerFaceAlpha', 0.5)
scatter(Pt59_median_tp_LAO_6(1,:), Pt59_median_ckov_uncorr_LAO6(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('CornflowerBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('CornflowerBlue'), 'MarkerFaceAlpha', 0.5)
ax = gca;
ax.FontSize = 16;
xlim([0 2])
ylim([0 1.1e5])
ax.FontName = 'Calibri';
xlabel('Dose (Gy)')
ylabel('Cherenkov')

clear tp_LAO6_array uncorr_LAO6_array corr_LAO6_array
tp45 = Pt45_median_tp_LAO_6(:,[1:9]);
uc45 = Pt45_median_ckov_uncorr_LAO6(:,[1:9]);
c45 = Pt45_median_ckov_corr_LAO6_global(:,[1:9]);

tp_LAO6_array = [Pt30_median_tp_LAO_6(1,:)'; Pt31_median_tp_LAO_6(1,:)';...
    Pt32_median_tp_LAO_6(1,:)'; Pt35_median_tp_LAO_6(1,:)';...
    Pt36_median_tp_LAO_6(1,:)'; Pt37_median_tp_LAO_6(1,:)';...
    Pt39_median_tp_LAO_6(1,:)'; Pt41_median_tp_LAO_6(1,:)';...
    Pt44_median_tp_LAO_6(1,:)'; tp45(1,:)';...
    Pt56_median_tp_LAO_6(1,:)'; Pt58_median_tp_LAO_6(1,:)';...
    Pt59_median_tp_LAO_6(1,:)'];


uncorr_LAO6_array = [Pt30_median_ckov_uncorr_LAO6(1,:)'; Pt31_median_ckov_uncorr_LAO6(1,:)';...
    Pt32_median_ckov_uncorr_LAO6(1,:)'; Pt35_median_ckov_uncorr_LAO6(1,:)';...
    Pt36_median_ckov_uncorr_LAO6(1,:)'; Pt37_median_ckov_uncorr_LAO6(1,:)';...
    Pt39_median_ckov_uncorr_LAO6(1,:)'; Pt41_median_ckov_uncorr_LAO6(1,:)';...
    Pt44_median_ckov_uncorr_LAO6(1,:)'; uc45(1,:)';...
    Pt56_median_ckov_uncorr_LAO6(1,:)'; Pt58_median_ckov_uncorr_LAO6(1,:)';...
    Pt59_median_ckov_uncorr_LAO6(1,:)'];


corr_LAO6_array = [Pt30_median_ckov_corr_LAO6_global(1,:)'; Pt31_median_ckov_corr_LAO6_global(1,:)';...
    Pt32_median_ckov_corr_LAO6_global(1,:)'; Pt35_median_ckov_corr_LAO6_global(1,:)';...
    Pt36_median_ckov_corr_LAO6_global(1,:)'; Pt37_median_ckov_corr_LAO6_global(1,:)';...
    Pt39_median_ckov_corr_LAO6_global(1,:)'; Pt41_median_ckov_corr_LAO6_global(1,:)';...
    Pt44_median_ckov_corr_LAO6_global(1,:)'; c45(1,:)';...
    Pt56_median_ckov_corr_LAO6_global(1,:)'; Pt58_median_ckov_corr_LAO6_global(1,:)';...
    Pt59_median_ckov_corr_LAO6_global(1,:)'];

[fit_LAO6_Uncorr gof_LAO6_Uncorr] = fit(tp_LAO6_array(:), uncorr_LAO6_array(:), 'poly1')
xspace_LAO6_u = [0:0.001:2];
yspace_LAO6_u = fit_LAO6_Uncorr.p1.*xspace_LAO6_u + fit_LAO6_Uncorr.p2;
plot(xspace_LAO6_u, yspace_LAO6_u, 'Color', 'k')


legend('Pt30', 'Pt31', 'Pt32', 'Pt35', 'Pt36', 'Pt37',  'Pt39', 'Pt41', 'Pt44', 'Pt45',...
    'Pt56', 'Pt58','Pt59', 'LAO6X', 'Location', 'Northwest');


subplot('Position', pos{2})
scatter(Pt30_median_tp_LAO_6(1,:), Pt30_median_ckov_corr_LAO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkRed'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkRed'), 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt31_median_tp_LAO_6(1,:), Pt31_median_ckov_corr_LAO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkGoldenRod'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkGoldenRod'), 'MarkerFaceAlpha', 0.5)
scatter(Pt32_median_tp_LAO_6(1,:), Pt32_median_ckov_corr_LAO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt35_median_tp_LAO_6(1,:), Pt35_median_ckov_corr_LAO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('CadetBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('CadetBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt36_median_tp_LAO_6(1,:), Pt36_median_ckov_corr_LAO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('Indigo'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('Indigo'), 'MarkerFaceAlpha', 0.5)
scatter(Pt37_median_tp_LAO_6(1,:), Pt37_median_ckov_corr_LAO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkGreen'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkGreen'), 'MarkerFaceAlpha', 0.5)
scatter(Pt39_median_tp_LAO_6(1,:), Pt39_median_ckov_corr_LAO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateGray'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateGray'), 'MarkerFaceAlpha', 0.5)
scatter(Pt41_median_tp_LAO_6(1,:), Pt41_median_ckov_corr_LAO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt44_median_tp_LAO_6(1,:), Pt44_median_ckov_corr_LAO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumSeaGreen'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumSeaGreen'), 'MarkerFaceAlpha', 0.5)
scatter(Pt45_median_tp_LAO_6(1,:), Pt45_median_ckov_corr_LAO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumTurquoise'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumTurquoise'), 'MarkerFaceAlpha', 0.5)
scatter(Pt56_median_tp_LAO_6(1,:), Pt56_median_ckov_corr_LAO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumPurple'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumPurple'), 'MarkerFaceAlpha', 0.5)
scatter(Pt58_median_tp_LAO_6(1,:), Pt58_median_ckov_corr_LAO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkOliveGreen'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkOliveGreen'), 'MarkerFaceAlpha', 0.5)
scatter(Pt59_median_tp_LAO_6(1,:), Pt59_median_ckov_corr_LAO6_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('CornflowerBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('CornflowerBlue'), 'MarkerFaceAlpha', 0.5)
ax = gca;
ax.FontSize = 16;
xlim([0 2])
ylim([0 1.1e5])
ax.FontName = 'Calibri';
xlabel('Dose (Gy)')
ylabel('Cherenkov')

[fit_LAO6_Corr gof_LAO6_Corr] = fit(tp_LAO6_array(:), corr_LAO6_array(:), 'poly1')
xspace_LAO6_c = [0:0.001:2];
yspace_LAO6_c = fit_LAO6_Corr.p1.*xspace_LAO6_c + fit_LAO6_Corr.p2;
plot(xspace_LAO6_c, yspace_LAO6_c, 'Color', 'k')

legend('Pt30', 'Pt31', 'Pt32', 'Pt35', 'Pt36', 'Pt37',  'Pt39', 'Pt41', 'Pt44', 'Pt45',...
    'Pt56', 'Pt58','Pt59', 'LAO6X', 'Location', 'Northwest');

fig = gcf;
fig.OuterPosition = [2 331 1349 732];
filename = 'HHU_Ckov2Dose_LAO6.fig';
saveas(gcf, filename)
filename = 'HHU_Ckov2Dose_LAO6.png';
saveas(gcf, filename)

%% Corrs

%statistics for Uncorrected LAO 6X
[r_u_LAO6 p_u_LAO6] = corrcoef(tp_LAO6_array', uncorr_LAO6_array')

% statistics for Corrected LAO 6X
[r_c_LAO6 p_c_LAO6] = corrcoef(tp_LAO6_array', corr_LAO6_array')



%% PLOT ALL RPO 10X BEAMS
figure(352)
clf
[ha, pos] = tight_subplot(1, 2,[.12 .07],[.1 .06],[.05 .03]);
subplot('Position', pos{1})
scatter(Pt32_median_tp_RPO_10(1,:), Pt32_median_ckov_uncorr_RPO10(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkBlue'), 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt39_median_tp_RPO_10(1,:), Pt39_median_ckov_uncorr_RPO10(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateGray'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateGray'), 'MarkerFaceAlpha', 0.5)
scatter(Pt41_median_tp_RPO_10(1,:), Pt41_median_ckov_uncorr_RPO10(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt45_median_tp_RPO_10(1,:), Pt45_median_ckov_uncorr_RPO10(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumTurquoise'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumTurquoise'), 'MarkerFaceAlpha', 0.5)
scatter(Pt59_median_tp_RPO_10(1,:), Pt59_median_ckov_uncorr_RPO10(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('CornflowerBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('CornflowerBlue'), 'MarkerFaceAlpha', 0.5)
ax = gca;
ax.FontSize = 16;
xlim([0 1])
ylim([0 7e4])
ax.FontName = 'Calibri';
xlabel('Dose (Gy)')
ylabel('Cherenkov')

tp_RPO10_array = [
    Pt32_median_tp_RPO_10(1,:)',...
    Pt39_median_tp_RPO_10(1,:)', Pt41_median_tp_RPO_10(1,:)',...
    Pt45_median_tp_RPO_10(1,:)', Pt59_median_tp_RPO_10(1,:)'];

uncorr_RPO10_array = [
    Pt32_median_ckov_uncorr_RPO10(1,:)',...
    Pt39_median_ckov_uncorr_RPO10(1,:)', Pt41_median_ckov_uncorr_RPO10(1,:)',...
    Pt45_median_ckov_uncorr_RPO10(1,:)',...
    Pt59_median_ckov_uncorr_RPO10(1,:)'];

corr_RPO10_array = [
    Pt32_median_ckov_corr_RPO10_global(1,:)',...
    Pt39_median_ckov_corr_RPO10_global(1,:)', Pt41_median_ckov_corr_RPO10_global(1,:)',...
    Pt45_median_ckov_corr_RPO10_global(1,:)',...
    Pt59_median_ckov_corr_RPO10_global(1,:)'];


[fit_RPO10_Uncorr gof_RPO10_Uncorr] = fit(tp_RPO10_array(:), uncorr_RPO10_array(:), 'poly1')
xspace_RPO10_u = [0:0.001:2];
yspace_RPO10_u = fit_RPO10_Uncorr.p1.*xspace_RPO10_u + fit_RPO10_Uncorr.p2;
plot(xspace_RPO10_u, yspace_RPO10_u, 'Color', 'k')
legend('Pt32','Pt39', 'Pt41', 'Pt45',...
    'Pt59', 'RPO10X', 'Location', 'Northwest');


subplot('Position', pos{2})
scatter(Pt32_median_tp_RPO_10(1,:), Pt32_median_ckov_corr_RPO10_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkBlue'), 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt39_median_tp_RPO_10(1,:), Pt39_median_ckov_corr_RPO10_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateGray'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateGray'), 'MarkerFaceAlpha', 0.5)
scatter(Pt41_median_tp_RPO_10(1,:), Pt41_median_ckov_corr_RPO10_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt45_median_tp_RPO_10(1,:), Pt45_median_ckov_corr_RPO10_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumTurquoise'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumTurquoise'), 'MarkerFaceAlpha', 0.5)
scatter(Pt59_median_tp_RPO_10(1,:), Pt59_median_ckov_corr_RPO10_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('CornflowerBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('CornflowerBlue'), 'MarkerFaceAlpha', 0.5)
ax = gca;
ax.FontSize = 16;
xlim([0 1])
ylim([0 7e4])
ax.FontName = 'Calibri';
xlabel('Dose (Gy)')
ylabel('Corrected Cherenkov')

[fit_RPO10_Corr gof_RPO10_Corr] = fit(tp_RPO10_array(:), corr_RPO10_array(:), 'poly1')
xspace_RPO10_c = [0:0.001:2];
yspace_RPO10_c = fit_RPO10_Corr.p1.*xspace_RPO10_c + fit_RPO10_Corr.p2;
plot(xspace_RPO10_c, yspace_RPO10_c, 'Color', 'k')
legend('Pt32','Pt39', 'Pt41', 'Pt45',...
    'Pt59', 'RPO 10X', 'Location', 'Northwest');

fig = gcf;
fig.OuterPosition = [2 331 1349 732];
filename = 'HHU_Ckov2Dose_RPO10.fig';
saveas(gcf, filename)
filename = 'HHU_Ckov2Dose_RPO10.png';
saveas(gcf, filename)
%% COVs
%statistics for Uncorrected RPO 6X
[r_u_RPO10 p_u_RPO10] = corrcoef(tp_RPO10_array', uncorr_RPO10_array')

% statistics for Corrected RPO 6X
[r_c_RPO10 p_c_RPO10] = corrcoef(tp_RPO10_array', corr_RPO10_array')


%% PLOT ALL LAO 10X BEAMS
figure(353)
clf
[ha, pos] = tight_subplot(1, 2,[.12 .07],[.1 .06],[.05 .03]);
subplot('Position', pos{1})
scatter(Pt32_median_tp_LAO_10(1,:), Pt32_median_ckov_uncorr_LAO10(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkBlue'), 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt39_median_tp_LAO_10(1,:), Pt39_median_ckov_uncorr_LAO10(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateGray'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateGray'), 'MarkerFaceAlpha', 0.5)
scatter(Pt41_median_tp_LAO_10(1,:), Pt41_median_ckov_uncorr_LAO10(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt45_median_tp_LAO_10(1,:), Pt45_median_ckov_uncorr_LAO10(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumTurquoise'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumTurquoise'), 'MarkerFaceAlpha', 0.5)
scatter(Pt59_median_tp_LAO_10(1,:), Pt59_median_ckov_uncorr_LAO10(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('CornflowerBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('CornflowerBlue'), 'MarkerFaceAlpha', 0.5)
ax = gca;
ax.FontSize = 16;
xlim([0 1.1])
ylim([0 7e4])
ax.FontName = 'Calibri';
xlabel('Dose (Gy)')
ylabel('Cherenkov')

tp_LAO10_array = [
    Pt32_median_tp_LAO_10(1,:)',...
    Pt39_median_tp_LAO_10(1,:)', Pt41_median_tp_LAO_10(1,:)',...
    Pt45_median_tp_LAO_10(1,:)', Pt59_median_tp_LAO_10(1,:)'];

uncorr_LAO10_array = [
    Pt32_median_ckov_uncorr_LAO10(1,:)',...
    Pt39_median_ckov_uncorr_LAO10(1,:)', Pt41_median_ckov_uncorr_LAO10(1,:)',...
    Pt45_median_ckov_uncorr_LAO10(1,:)',...
    Pt59_median_ckov_uncorr_LAO10(1,:)'];

corr_LAO10_array = [
    Pt32_median_ckov_corr_LAO10_global(1,:)',...
    Pt39_median_ckov_corr_LAO10_global(1,:)', Pt41_median_ckov_corr_LAO10_global(1,:)',...
    Pt45_median_ckov_corr_LAO10_global(1,:)',...
    Pt59_median_ckov_corr_LAO10_global(1,:)'];

[fit_LAO10_Uncorr gof_LAO10_Uncorr] = fit(tp_LAO10_array(:), uncorr_LAO10_array(:), 'poly1')
xspace_LAO10_u = [0:0.001:2];
yspace_LAO10_u = fit_LAO10_Uncorr.p1.*xspace_LAO10_u + fit_LAO10_Uncorr.p2;
plot(xspace_LAO10_u, yspace_LAO10_u, 'Color', 'k')
legend('Pt32','Pt39', 'Pt41', 'Pt45',...
    'Pt59', 'LAO10X', 'Location', 'Northwest');


subplot('Position', pos{2})
scatter(Pt32_median_tp_LAO_10(1,:), Pt32_median_ckov_corr_LAO10_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkBlue'), 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt39_median_tp_LAO_10(1,:), Pt39_median_ckov_corr_LAO10_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateGray'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateGray'), 'MarkerFaceAlpha', 0.5)
scatter(Pt41_median_tp_LAO_10(1,:), Pt41_median_ckov_corr_LAO10_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('DarkSlateBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('DarkSlateBlue'), 'MarkerFaceAlpha', 0.5)
scatter(Pt45_median_tp_LAO_10(1,:), Pt45_median_ckov_corr_LAO10_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('MediumTurquoise'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('MediumTurquoise'), 'MarkerFaceAlpha', 0.5)
scatter(Pt59_median_tp_LAO_10(1,:), Pt59_median_ckov_corr_LAO10_global(1,:), 'filled', 'SizeData', 75,...
    'MarkerEdgeColor', rgb('CornflowerBlue'), 'MarkerEdgeAlpha', 0.5,...
    'MarkerFaceColor', rgb('CornflowerBlue'), 'MarkerFaceAlpha', 0.5)
ax = gca;
ax.FontSize = 16;
xlim([0 1.1])
ylim([0 7e4])
ax.FontName = 'Calibri';
xlabel('Dose (Gy)')
ylabel('Corrected Cherenkov')

[fit_LAO10_Corr gof_LAO10_Corr] = fit(tp_LAO10_array(:), corr_LAO10_array(:), 'poly1')
xspace_LAO10_c = [0:0.001:2];
yspace_LAO10_c = fit_LAO10_Corr.p1.*xspace_LAO10_c + fit_LAO10_Corr.p2;
plot(xspace_LAO10_c, yspace_LAO10_c, 'Color', 'k')
legend('Pt32','Pt39', 'Pt41', 'Pt45',...
    'Pt59', 'LAO 10X', 'Location', 'Northwest');

fig = gcf;
fig.OuterPosition = [2 331 1349 732];
filename = 'HHU_Ckov2Dose_LAO10.fig';
saveas(gcf, filename)
filename = 'HHU_Ckov2Dose_LAO10.png';
saveas(gcf, filename)

%% COVs

%statistics for Uncorrected LAO 6X
[r_u_LAO10 p_u_LAO10] = corrcoef(tp_LAO10_array', uncorr_LAO10_array')

% statistics for Corrected LAO 6X
[r_c_LAO10 p_c_LAO10] = corrcoef(tp_LAO10_array', corr_LAO10_array')


