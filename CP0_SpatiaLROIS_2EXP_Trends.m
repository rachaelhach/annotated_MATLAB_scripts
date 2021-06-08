%% These take unattenuated and attenuated ROIS from the cumulative cherenkov image and the 
% HU CT image. It plots them then comes up with the local slopes using the
% curve fitting toolbox. load that session to get those slopes. 
%%
Pt30_RPO_CkovDoseNorm_6 = medfilt2(Pt30_Ckov_DoseNorm_th_c_RPO(:,:,2), [5 5]);
Pt30_LAO_CkovDoseNorm_6 = medfilt2(Pt30_Ckov_DoseNorm_th_c_LAO(:,:,2), [5 5]);
Pt31_RPO_CkovDoseNorm_6 = medfilt2(Pt31_Ckov_DoseNorm_th_c_RPO(:,:,1), [5 5]);
Pt31_LAO_CkovDoseNorm_6 = medfilt2(Pt31_Ckov_DoseNorm_th_c_LAO(:,:,1), [5 5]);
Pt32_RPO_CkovDoseNorm_6 = medfilt2(Pt32_Ckov_DoseNorm_th_c_RPO_6(:,:,1), [5 5]);
Pt32_LAO_CkovDoseNorm_6 = medfilt2(Pt32_Ckov_DoseNorm_th_c_RPO_6(:,:,1), [5 5]);
Pt32_RPO_CkovDoseNorm_10 = medfilt2(Pt32_Ckov_DoseNorm_th_c_RPO_10(:,:,1), [5 5]);
Pt32_LAO_CkovDoseNorm_10 = medfilt2(Pt32_Ckov_DoseNorm_th_c_RPO_10(:,:,1), [5 5]);
Pt35_RPO_CkovDoseNorm_6 = medfilt2(Pt35_Ckov_DoseNorm_th_c_RPO(:,:,1), [5 5]);
Pt35_LAO_CkovDoseNorm_6 = medfilt2(Pt35_Ckov_DoseNorm_th_c_LAO(:,:,1), [5 5]);
Pt36_RPO_CkovDoseNorm_6 = medfilt2(Pt36_Ckov_DoseNorm_th_c_RPO(:,:,1), [5 5]);
Pt36_LAO_CkovDoseNorm_6 = medfilt2(Pt36_Ckov_DoseNorm_th_c_LAO(:,:,1), [5 5]);
Pt37_RPO_CkovDoseNorm_6 = medfilt2(Pt37_Ckov_DoseNorm_th_c_RPO(:,:,1), [5 5]);
Pt37_LAO_CkovDoseNorm_6 = medfilt2(Pt37_Ckov_DoseNorm_th_c_LAO(:,:,1), [5 5]);
Pt39_RPO_CkovDoseNorm_6 = medfilt2(Pt39_Ckov_DoseNorm_th_c_RPO_6(:,:,1), [5 5]);
Pt39_LAO_CkovDoseNorm_6 = medfilt2(Pt39_Ckov_DoseNorm_th_c_RPO_6(:,:,1), [5 5]);
Pt39_RPO_CkovDoseNorm_10 = medfilt2(Pt39_Ckov_DoseNorm_th_c_RPO_10(:,:,1), [5 5]);
Pt39_LAO_CkovDoseNorm_10 = medfilt2(Pt39_Ckov_DoseNorm_th_c_RPO_10(:,:,1), [5 5]);
Pt41_RPO_CkovDoseNorm_6 = medfilt2(Pt41_Ckov_DoseNorm_th_c_RPO_6(:,:,1), [5 5]);
Pt41_LAO_CkovDoseNorm_6 = medfilt2(Pt41_Ckov_DoseNorm_th_c_RPO_6(:,:,1), [5 5]);
Pt41_RPO_CkovDoseNorm_10 = medfilt2(Pt41_Ckov_DoseNorm_th_c_RPO_10(:,:,1), [5 5]);
Pt41_LAO_CkovDoseNorm_10 = medfilt2(Pt41_Ckov_DoseNorm_th_c_RPO_10(:,:,1), [5 5]);
Pt44_RPO_CkovDoseNorm_6 = medfilt2(Pt44_Ckov_DoseNorm_th_c_RPO(:,:,1), [5 5]);
Pt44_LAO_CkovDoseNorm_6 = medfilt2(Pt44_Ckov_DoseNorm_th_c_LAO(:,:,1), [5 5]);
Pt45_RPO_CkovDoseNorm_6 = medfilt2(Pt45_Ckov_DoseNorm_th_c_RPO_6(:,:,1), [5 5]);
Pt45_LAO_CkovDoseNorm_6 = medfilt2(Pt45_Ckov_DoseNorm_th_c_RPO_6(:,:,1), [5 5]);
Pt45_RPO_CkovDoseNorm_10 = medfilt2(Pt45_Ckov_DoseNorm_th_c_RPO_10(:,:,1), [5 5]);
Pt45_LAO_CkovDoseNorm_10 = medfilt2(Pt45_Ckov_DoseNorm_th_c_RPO_10(:,:,1), [5 5]);
Pt56_RPO_CkovDoseNorm_6 = medfilt2(Pt56_Ckov_DoseNorm_th_c_RPO(:,:,1), [5 5]);
Pt56_LAO_CkovDoseNorm_6 = medfilt2(Pt56_Ckov_DoseNorm_th_c_LAO(:,:,1), [5 5]);
Pt58_RPO_CkovDoseNorm_6 = medfilt2(Pt58_Ckov_DoseNorm_th_c_RPO(:,:,1), [5 5]);
Pt58_LAO_CkovDoseNorm_6 = medfilt2(Pt58_Ckov_DoseNorm_th_c_LAO(:,:,1), [5 5]);
Pt59_RPO_CkovDoseNorm_6 = medfilt2(Pt59_Ckov_DoseNorm_th_c_RPO_6(:,:,1), [5 5]);
Pt59_LAO_CkovDoseNorm_6 = medfilt2(Pt59_Ckov_DoseNorm_th_c_RPO_6(:,:,1), [5 5]);
Pt59_RPO_CkovDoseNorm_10 = medfilt2(Pt59_Ckov_DoseNorm_th_c_RPO_10(:,:,1), [5 5]);
Pt59_LAO_CkovDoseNorm_10 = medfilt2(Pt59_Ckov_DoseNorm_th_c_RPO_10(:,:,1), [5 5]);


im_array_input = cat(3, Pt30_RPO_CkovDoseNorm_6,...
    Pt31_RPO_CkovDoseNorm_6,...
    Pt32_RPO_CkovDoseNorm_6,...
    Pt35_RPO_CkovDoseNorm_6,...
    Pt36_RPO_CkovDoseNorm_6,...
    Pt37_RPO_CkovDoseNorm_6,...
    Pt39_RPO_CkovDoseNorm_6,...
    Pt41_RPO_CkovDoseNorm_6,...
    Pt44_RPO_CkovDoseNorm_6,...
    Pt45_RPO_CkovDoseNorm_6,...
    Pt56_RPO_CkovDoseNorm_6,...
    Pt58_RPO_CkovDoseNorm_6,...
    Pt59_RPO_CkovDoseNorm_6);
figure(900)
[ha pos] = tight_subplot(4,4, [0.001 0.001], [0.001 0.001], [0.001 0.001]);
for i = 1:size(im_array_input,3)
    subplot('Position', pos{i})
    imagesc(im_array_input(:,:,i)); caxis([0 5e4]); colormap(cmap1); axis image; axis off;
end


%% PT30
figure(100)
clf
clear Pt30_HU_Unattenuated_Mean_RPO Pt30_HU_Attenuated_Mean_LAO
clear Pt30_Ckov_Attenuated_Mean_6_RPO Pt30_Ckov_Unattenuated_Mean_6_RPO Pt30_Ckov_Attenuated_Mean_6_LAO Pt30_Ckov_Unattenuated_Mean_6_LAO
clear Pt30_Ckov_Attenuated_Mean_10_RPO Pt30_Ckov_Unattenuated_Mean_10_RPO Pt30_Ckov_Attenuated_Mean_10_LAO Pt30_Ckov_Unattenuated_Mean_10_LAO
for i = 1:10
    m_roi = Pt30_DN_ROIs_HHU_Unattenuated(:,:,i);
    % HU
    Pt30_HU_Unattenuated_RPO = Pt30_CT_HU_Map_RPO.*m_roi; 
    Pt30_HU_Unattenuated_RPO(Pt30_HU_Unattenuated_RPO==0)=nan;
    Pt30_HU_Unattenuated_LAO = Pt30_CT_HU_Map_LAO.*m_roi; 
    Pt30_HU_Unattenuated_LAO(Pt30_HU_Unattenuated_LAO==0)=nan;
    
    %6X
    Pt30_Ckov_Unattenuated_6_RPO = Pt30_RPO_CkovDoseNorm_6.*m_roi;
    Pt30_Ckov_Unattenuated_6_RPO(Pt30_Ckov_Unattenuated_6_RPO==0)=nan;
    Pt30_Ckov_Unattenuated_6_LAO = Pt30_LAO_CkovDoseNorm_6.*m_roi;
    Pt30_Ckov_Unattenuated_6_LAO(Pt30_Ckov_Unattenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt30_Ckov_Unattenuated_10_RPO = Pt30_RPO_CkovDoseNorm_10.*m_roi;
%     Pt30_Ckov_Unattenuated_10_RPO(Pt30_Ckov_Unattenuated_10_RPO==0)=nan;
%     Pt30_Ckov_Unattenuated_10_LAO = Pt30_LAO_CkovDoseNorm_10.*m_roi;
%     Pt30_Ckov_Unattenuated_10_LAO(Pt30_Ckov_Unattenuated_10_LAO==0)=nan;
%     
    Pt30_HU_Unattenuated_Mean_RPO(i) = nanmean(Pt30_HU_Unattenuated_RPO(:));
    Pt30_HU_Unattenuated_Mean_LAO(i) = nanmean(Pt30_HU_Unattenuated_LAO(:));

    Pt30_Ckov_Unattenuated_Mean_6_RPO(i) = nanmean(Pt30_Ckov_Unattenuated_6_RPO(:));
    Pt30_Ckov_Unattenuated_Mean_6_LAO(i) = nanmean(Pt30_Ckov_Unattenuated_6_LAO(:));
%     Pt30_Ckov_Unattenuated_Mean_10_RPO(i) = nanmean(Pt30_Ckov_Unattenuated_10_RPO(:));
%     Pt30_Ckov_Unattenuated_Mean_10_LAO(i) = nanmean(Pt30_Ckov_Unattenuated_10_LAO(:));
%     
    % ATTENUATED
    m_roi = Pt30_DN_ROIs_HHU_Attenuated(:,:,i);
     % HU
    Pt30_HU_Attenuated_RPO = Pt30_CT_HU_Map_RPO.*m_roi; 
    Pt30_HU_Attenuated_RPO(Pt30_HU_Attenuated_RPO==0)=nan;
    Pt30_HU_Attenuated_LAO = Pt30_CT_HU_Map_LAO.*m_roi; 
    Pt30_HU_Attenuated_LAO(Pt30_HU_Attenuated_LAO==0)=nan;
    
    %6X
    Pt30_Ckov_Attenuated_6_RPO = Pt30_RPO_CkovDoseNorm_6.*m_roi;
    Pt30_Ckov_Attenuated_6_RPO(Pt30_Ckov_Attenuated_6_RPO==0)=nan;
    Pt30_Ckov_Attenuated_6_LAO = Pt30_LAO_CkovDoseNorm_6.*m_roi;
    Pt30_Ckov_Attenuated_6_LAO(Pt30_Ckov_Attenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt30_Ckov_Attenuated_10_RPO = Pt30_RPO_CkovDoseNorm_10.*m_roi;
%     Pt30_Ckov_Attenuated_10_RPO(Pt30_Ckov_Attenuated_10_RPO==0)=nan;
%     Pt30_Ckov_Attenuated_10_LAO = Pt30_LAO_CkovDoseNorm_10.*m_roi;
%     Pt30_Ckov_Attenuated_10_LAO(Pt30_Ckov_Attenuated_10_LAO==0)=nan;
%     
    Pt30_HU_Attenuated_Mean_RPO(i) = nanmean(Pt30_HU_Attenuated_RPO(:));
    Pt30_HU_Attenuated_Mean_LAO(i) = nanmean(Pt30_HU_Attenuated_LAO(:));

    Pt30_Ckov_Attenuated_Mean_6_RPO(i) = nanmean(Pt30_Ckov_Attenuated_6_RPO(:));
    Pt30_Ckov_Attenuated_Mean_6_LAO(i) = nanmean(Pt30_Ckov_Attenuated_6_LAO(:));
%     Pt30_Ckov_Attenuated_Mean_10_RPO(i) = nanmean(Pt30_Ckov_Attenuated_10_RPO(:));
%     Pt30_Ckov_Attenuated_Mean_10_LAO(i) = nanmean(Pt30_Ckov_Attenuated_10_LAO(:));
%     
    clear Pt30_HU_Attenuated_6 Pt30_Ckov_Attenuated_6 Pt30_HU_Attenuated_10 Pt30_Ckov_Attenuated_10
    clear Pt30_Ckov_Unattenuated_6 Pt30_HU_Unattenuated_6 Pt30_Ckov_Unattenuated_10 Pt30_HU_Unattenuated_10
end

figure(100)
scatter(Pt30_HU_Unattenuated_Mean_RPO(:), Pt30_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt30_HU_Unattenuated_Mean_LAO(:), Pt30_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt30_HU_Attenuated_Mean_RPO(:), Pt30_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt30_HU_Attenuated_Mean_LAO(:), Pt30_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;

% 
% figure(101)
% scatter(Pt30_HU_Unattenuated_Mean_RPO(:), Pt30_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% hold on
% scatter(Pt30_HU_Unattenuated_Mean_LAO(:), Pt30_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% scatter(Pt30_HU_Attenuated_Mean_RPO(:), Pt30_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% scatter(Pt30_HU_Attenuated_Mean_LAO(:), Pt30_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% xlim([-200 150]), 
% ylim([0 4e4])
% axy = gca;
% xlabel('Surface Sampled Radiodensity (HU)')
% ylabel('Cherenkov / Dose (cpGy)')
% axy.FontSize = 18;
% 
% 

%% PT31
figure(100)
clf
clear Pt31_HU_Unattenuated_Mean_RPO Pt31_HU_Attenuated_Mean_LAO
clear Pt31_Ckov_Attenuated_Mean_6_RPO Pt31_Ckov_Unattenuated_Mean_6_RPO Pt31_Ckov_Attenuated_Mean_6_LAO Pt31_Ckov_Unattenuated_Mean_6_LAO
clear Pt31_Ckov_Attenuated_Mean_10_RPO Pt31_Ckov_Unattenuated_Mean_10_RPO Pt31_Ckov_Attenuated_Mean_10_LAO Pt31_Ckov_Unattenuated_Mean_10_LAO
for i = 1:10
    m_roi = Pt31_DN_ROIs_HHU_Unattenuated(:,:,i);
    % HU
    Pt31_HU_Unattenuated_RPO = Pt31_CT_HU_Map_RPO.*m_roi; 
    Pt31_HU_Unattenuated_RPO(Pt31_HU_Unattenuated_RPO==0)=nan;
    Pt31_HU_Unattenuated_LAO = Pt31_CT_HU_Map_LAO.*m_roi; 
    Pt31_HU_Unattenuated_LAO(Pt31_HU_Unattenuated_LAO==0)=nan;
    
    %6X
    Pt31_Ckov_Unattenuated_6_RPO = Pt31_RPO_CkovDoseNorm_6.*m_roi;
    Pt31_Ckov_Unattenuated_6_RPO(Pt31_Ckov_Unattenuated_6_RPO==0)=nan;
    Pt31_Ckov_Unattenuated_6_LAO = Pt31_LAO_CkovDoseNorm_6.*m_roi;
    Pt31_Ckov_Unattenuated_6_LAO(Pt31_Ckov_Unattenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt31_Ckov_Unattenuated_10_RPO = Pt31_RPO_CkovDoseNorm_10.*m_roi;
%     Pt31_Ckov_Unattenuated_10_RPO(Pt31_Ckov_Unattenuated_10_RPO==0)=nan;
%     Pt31_Ckov_Unattenuated_10_LAO = Pt31_LAO_CkovDoseNorm_10.*m_roi;
%     Pt31_Ckov_Unattenuated_10_LAO(Pt31_Ckov_Unattenuated_10_LAO==0)=nan;
%     
    Pt31_HU_Unattenuated_Mean_RPO(i) = nanmean(Pt31_HU_Unattenuated_RPO(:));
    Pt31_HU_Unattenuated_Mean_LAO(i) = nanmean(Pt31_HU_Unattenuated_LAO(:));

    Pt31_Ckov_Unattenuated_Mean_6_RPO(i) = nanmean(Pt31_Ckov_Unattenuated_6_RPO(:));
    Pt31_Ckov_Unattenuated_Mean_6_LAO(i) = nanmean(Pt31_Ckov_Unattenuated_6_LAO(:));
%     Pt31_Ckov_Unattenuated_Mean_10_RPO(i) = nanmean(Pt31_Ckov_Unattenuated_10_RPO(:));
%     Pt31_Ckov_Unattenuated_Mean_10_LAO(i) = nanmean(Pt31_Ckov_Unattenuated_10_LAO(:));
%     
    % ATTENUATED
    m_roi = Pt31_DN_ROIs_HHU_Attenuated(:,:,i);
     % HU
    Pt31_HU_Attenuated_RPO = Pt31_CT_HU_Map_RPO.*m_roi; 
    Pt31_HU_Attenuated_RPO(Pt31_HU_Attenuated_RPO==0)=nan;
    Pt31_HU_Attenuated_LAO = Pt31_CT_HU_Map_LAO.*m_roi; 
    Pt31_HU_Attenuated_LAO(Pt31_HU_Attenuated_LAO==0)=nan;
    
    %6X
    Pt31_Ckov_Attenuated_6_RPO = Pt31_RPO_CkovDoseNorm_6.*m_roi;
    Pt31_Ckov_Attenuated_6_RPO(Pt31_Ckov_Attenuated_6_RPO==0)=nan;
    Pt31_Ckov_Attenuated_6_LAO = Pt31_LAO_CkovDoseNorm_6.*m_roi;
    Pt31_Ckov_Attenuated_6_LAO(Pt31_Ckov_Attenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt31_Ckov_Attenuated_10_RPO = Pt31_RPO_CkovDoseNorm_10.*m_roi;
%     Pt31_Ckov_Attenuated_10_RPO(Pt31_Ckov_Attenuated_10_RPO==0)=nan;
%     Pt31_Ckov_Attenuated_10_LAO = Pt31_LAO_CkovDoseNorm_10.*m_roi;
%     Pt31_Ckov_Attenuated_10_LAO(Pt31_Ckov_Attenuated_10_LAO==0)=nan;
%     
    Pt31_HU_Attenuated_Mean_RPO(i) = nanmean(Pt31_HU_Attenuated_RPO(:));
    Pt31_HU_Attenuated_Mean_LAO(i) = nanmean(Pt31_HU_Attenuated_LAO(:));

    Pt31_Ckov_Attenuated_Mean_6_RPO(i) = nanmean(Pt31_Ckov_Attenuated_6_RPO(:));
    Pt31_Ckov_Attenuated_Mean_6_LAO(i) = nanmean(Pt31_Ckov_Attenuated_6_LAO(:));
%     Pt31_Ckov_Attenuated_Mean_10_RPO(i) = nanmean(Pt31_Ckov_Attenuated_10_RPO(:));
%     Pt31_Ckov_Attenuated_Mean_10_LAO(i) = nanmean(Pt31_Ckov_Attenuated_10_LAO(:));
%     
    clear Pt31_HU_Attenuated_6 Pt31_Ckov_Attenuated_6 Pt31_HU_Attenuated_10 Pt31_Ckov_Attenuated_10
    clear Pt31_Ckov_Unattenuated_6 Pt31_HU_Unattenuated_6 Pt31_Ckov_Unattenuated_10 Pt31_HU_Unattenuated_10
end

figure(100)
scatter(Pt31_HU_Unattenuated_Mean_RPO(:), Pt31_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt31_HU_Unattenuated_Mean_LAO(:), Pt31_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt31_HU_Attenuated_Mean_RPO(:), Pt31_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt31_HU_Attenuated_Mean_LAO(:), Pt31_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;

% 
% figure(101)
% scatter(Pt31_HU_Unattenuated_Mean_RPO(:), Pt31_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% hold on
% scatter(Pt31_HU_Unattenuated_Mean_LAO(:), Pt31_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% scatter(Pt31_HU_Attenuated_Mean_RPO(:), Pt31_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% scatter(Pt31_HU_Attenuated_Mean_LAO(:), Pt31_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% xlim([-200 150]), 
% ylim([0 4e4])
% axy = gca;
% xlabel('Surface Sampled Radiodensity (HU)')
% ylabel('Cherenkov / Dose (cpGy)')
% axy.FontSize = 18;
% 
% 

%% PT35
figure(100)
clf
clear Pt35_HU_Unattenuated_Mean_RPO Pt35_HU_Attenuated_Mean_LAO
clear Pt35_Ckov_Attenuated_Mean_6_RPO Pt35_Ckov_Unattenuated_Mean_6_RPO Pt35_Ckov_Attenuated_Mean_6_LAO Pt35_Ckov_Unattenuated_Mean_6_LAO
clear Pt35_Ckov_Attenuated_Mean_10_RPO Pt35_Ckov_Unattenuated_Mean_10_RPO Pt35_Ckov_Attenuated_Mean_10_LAO Pt35_Ckov_Unattenuated_Mean_10_LAO
for i = 1:10
    m_roi = Pt35_DN_ROIs_HHU_Unattenuated(:,:,i);
    % HU
    Pt35_HU_Unattenuated_RPO = Pt35_CT_HU_Map_RPO.*m_roi; 
    Pt35_HU_Unattenuated_RPO(Pt35_HU_Unattenuated_RPO==0)=nan;
    Pt35_HU_Unattenuated_LAO = Pt35_CT_HU_Map_LAO.*m_roi; 
    Pt35_HU_Unattenuated_LAO(Pt35_HU_Unattenuated_LAO==0)=nan;
    
    %6X
    Pt35_Ckov_Unattenuated_6_RPO = Pt35_RPO_CkovDoseNorm_6.*m_roi;
    Pt35_Ckov_Unattenuated_6_RPO(Pt35_Ckov_Unattenuated_6_RPO==0)=nan;
    Pt35_Ckov_Unattenuated_6_LAO = Pt35_LAO_CkovDoseNorm_6.*m_roi;
    Pt35_Ckov_Unattenuated_6_LAO(Pt35_Ckov_Unattenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt35_Ckov_Unattenuated_10_RPO = Pt35_RPO_CkovDoseNorm_10.*m_roi;
%     Pt35_Ckov_Unattenuated_10_RPO(Pt35_Ckov_Unattenuated_10_RPO==0)=nan;
%     Pt35_Ckov_Unattenuated_10_LAO = Pt35_LAO_CkovDoseNorm_10.*m_roi;
%     Pt35_Ckov_Unattenuated_10_LAO(Pt35_Ckov_Unattenuated_10_LAO==0)=nan;
%     
    Pt35_HU_Unattenuated_Mean_RPO(i) = nanmean(Pt35_HU_Unattenuated_RPO(:));
    Pt35_HU_Unattenuated_Mean_LAO(i) = nanmean(Pt35_HU_Unattenuated_LAO(:));

    Pt35_Ckov_Unattenuated_Mean_6_RPO(i) = nanmean(Pt35_Ckov_Unattenuated_6_RPO(:));
    Pt35_Ckov_Unattenuated_Mean_6_LAO(i) = nanmean(Pt35_Ckov_Unattenuated_6_LAO(:));
%     Pt35_Ckov_Unattenuated_Mean_10_RPO(i) = nanmean(Pt35_Ckov_Unattenuated_10_RPO(:));
%     Pt35_Ckov_Unattenuated_Mean_10_LAO(i) = nanmean(Pt35_Ckov_Unattenuated_10_LAO(:));
%     
    % ATTENUATED
    m_roi = Pt35_DN_ROIs_HHU_Attenuated(:,:,i);
     % HU
    Pt35_HU_Attenuated_RPO = Pt35_CT_HU_Map_RPO.*m_roi; 
    Pt35_HU_Attenuated_RPO(Pt35_HU_Attenuated_RPO==0)=nan;
    Pt35_HU_Attenuated_LAO = Pt35_CT_HU_Map_LAO.*m_roi; 
    Pt35_HU_Attenuated_LAO(Pt35_HU_Attenuated_LAO==0)=nan;
    
    %6X
    Pt35_Ckov_Attenuated_6_RPO = Pt35_RPO_CkovDoseNorm_6.*m_roi;
    Pt35_Ckov_Attenuated_6_RPO(Pt35_Ckov_Attenuated_6_RPO==0)=nan;
    Pt35_Ckov_Attenuated_6_LAO = Pt35_LAO_CkovDoseNorm_6.*m_roi;
    Pt35_Ckov_Attenuated_6_LAO(Pt35_Ckov_Attenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt35_Ckov_Attenuated_10_RPO = Pt35_RPO_CkovDoseNorm_10.*m_roi;
%     Pt35_Ckov_Attenuated_10_RPO(Pt35_Ckov_Attenuated_10_RPO==0)=nan;
%     Pt35_Ckov_Attenuated_10_LAO = Pt35_LAO_CkovDoseNorm_10.*m_roi;
%     Pt35_Ckov_Attenuated_10_LAO(Pt35_Ckov_Attenuated_10_LAO==0)=nan;
%     
    Pt35_HU_Attenuated_Mean_RPO(i) = nanmean(Pt35_HU_Attenuated_RPO(:));
    Pt35_HU_Attenuated_Mean_LAO(i) = nanmean(Pt35_HU_Attenuated_LAO(:));

    Pt35_Ckov_Attenuated_Mean_6_RPO(i) = nanmean(Pt35_Ckov_Attenuated_6_RPO(:));
    Pt35_Ckov_Attenuated_Mean_6_LAO(i) = nanmean(Pt35_Ckov_Attenuated_6_LAO(:));
%     Pt35_Ckov_Attenuated_Mean_10_RPO(i) = nanmean(Pt35_Ckov_Attenuated_10_RPO(:));
%     Pt35_Ckov_Attenuated_Mean_10_LAO(i) = nanmean(Pt35_Ckov_Attenuated_10_LAO(:));
%     
    clear Pt35_HU_Attenuated_6 Pt35_Ckov_Attenuated_6 Pt35_HU_Attenuated_10 Pt35_Ckov_Attenuated_10
    clear Pt35_Ckov_Unattenuated_6 Pt35_HU_Unattenuated_6 Pt35_Ckov_Unattenuated_10 Pt35_HU_Unattenuated_10
end

figure(100)
scatter(Pt35_HU_Unattenuated_Mean_RPO(:), Pt35_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt35_HU_Unattenuated_Mean_LAO(:), Pt35_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt35_HU_Attenuated_Mean_RPO(:), Pt35_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt35_HU_Attenuated_Mean_LAO(:), Pt35_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;

% 
% figure(101)
% scatter(Pt35_HU_Unattenuated_Mean_RPO(:), Pt35_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% hold on
% scatter(Pt35_HU_Unattenuated_Mean_LAO(:), Pt35_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% scatter(Pt35_HU_Attenuated_Mean_RPO(:), Pt35_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% scatter(Pt35_HU_Attenuated_Mean_LAO(:), Pt35_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% xlim([-200 150]), 
% ylim([0 4e4])
% axy = gca;
% xlabel('Surface Sampled Radiodensity (HU)')
% ylabel('Cherenkov / Dose (cpGy)')
% axy.FontSize = 18;
% 
%% PT36
figure(100)
clf
clear Pt36_HU_Unattenuated_Mean_RPO Pt36_HU_Attenuated_Mean_LAO
clear Pt36_Ckov_Attenuated_Mean_6_RPO Pt36_Ckov_Unattenuated_Mean_6_RPO Pt36_Ckov_Attenuated_Mean_6_LAO Pt36_Ckov_Unattenuated_Mean_6_LAO
clear Pt36_Ckov_Attenuated_Mean_10_RPO Pt36_Ckov_Unattenuated_Mean_10_RPO Pt36_Ckov_Attenuated_Mean_10_LAO Pt36_Ckov_Unattenuated_Mean_10_LAO
for i = 1:10
    m_roi = Pt36_DN_ROIs_HHU_Unattenuated(:,:,i);
    % HU
    Pt36_HU_Unattenuated_RPO = Pt36_CT_HU_Map_RPO.*m_roi; 
    Pt36_HU_Unattenuated_RPO(Pt36_HU_Unattenuated_RPO==0)=nan;
    Pt36_HU_Unattenuated_LAO = Pt36_CT_HU_Map_LAO.*m_roi; 
    Pt36_HU_Unattenuated_LAO(Pt36_HU_Unattenuated_LAO==0)=nan;
    
    %6X
    Pt36_Ckov_Unattenuated_6_RPO = Pt36_RPO_CkovDoseNorm_6.*m_roi;
    Pt36_Ckov_Unattenuated_6_RPO(Pt36_Ckov_Unattenuated_6_RPO==0)=nan;
    Pt36_Ckov_Unattenuated_6_LAO = Pt36_LAO_CkovDoseNorm_6.*m_roi;
    Pt36_Ckov_Unattenuated_6_LAO(Pt36_Ckov_Unattenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt36_Ckov_Unattenuated_10_RPO = Pt36_RPO_CkovDoseNorm_10.*m_roi;
%     Pt36_Ckov_Unattenuated_10_RPO(Pt36_Ckov_Unattenuated_10_RPO==0)=nan;
%     Pt36_Ckov_Unattenuated_10_LAO = Pt36_LAO_CkovDoseNorm_10.*m_roi;
%     Pt36_Ckov_Unattenuated_10_LAO(Pt36_Ckov_Unattenuated_10_LAO==0)=nan;
%     
    Pt36_HU_Unattenuated_Mean_RPO(i) = nanmean(Pt36_HU_Unattenuated_RPO(:));
    Pt36_HU_Unattenuated_Mean_LAO(i) = nanmean(Pt36_HU_Unattenuated_LAO(:));

    Pt36_Ckov_Unattenuated_Mean_6_RPO(i) = nanmean(Pt36_Ckov_Unattenuated_6_RPO(:));
    Pt36_Ckov_Unattenuated_Mean_6_LAO(i) = nanmean(Pt36_Ckov_Unattenuated_6_LAO(:));
%     Pt36_Ckov_Unattenuated_Mean_10_RPO(i) = nanmean(Pt36_Ckov_Unattenuated_10_RPO(:));
%     Pt36_Ckov_Unattenuated_Mean_10_LAO(i) = nanmean(Pt36_Ckov_Unattenuated_10_LAO(:));
%     
    % ATTENUATED
    m_roi = Pt36_DN_ROIs_HHU_Attenuated(:,:,i);
     % HU
    Pt36_HU_Attenuated_RPO = Pt36_CT_HU_Map_RPO.*m_roi; 
    Pt36_HU_Attenuated_RPO(Pt36_HU_Attenuated_RPO==0)=nan;
    Pt36_HU_Attenuated_LAO = Pt36_CT_HU_Map_LAO.*m_roi; 
    Pt36_HU_Attenuated_LAO(Pt36_HU_Attenuated_LAO==0)=nan;
    
    %6X
    Pt36_Ckov_Attenuated_6_RPO = Pt36_RPO_CkovDoseNorm_6.*m_roi;
    Pt36_Ckov_Attenuated_6_RPO(Pt36_Ckov_Attenuated_6_RPO==0)=nan;
    Pt36_Ckov_Attenuated_6_LAO = Pt36_LAO_CkovDoseNorm_6.*m_roi;
    Pt36_Ckov_Attenuated_6_LAO(Pt36_Ckov_Attenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt36_Ckov_Attenuated_10_RPO = Pt36_RPO_CkovDoseNorm_10.*m_roi;
%     Pt36_Ckov_Attenuated_10_RPO(Pt36_Ckov_Attenuated_10_RPO==0)=nan;
%     Pt36_Ckov_Attenuated_10_LAO = Pt36_LAO_CkovDoseNorm_10.*m_roi;
%     Pt36_Ckov_Attenuated_10_LAO(Pt36_Ckov_Attenuated_10_LAO==0)=nan;
%     
    Pt36_HU_Attenuated_Mean_RPO(i) = nanmean(Pt36_HU_Attenuated_RPO(:));
    Pt36_HU_Attenuated_Mean_LAO(i) = nanmean(Pt36_HU_Attenuated_LAO(:));

    Pt36_Ckov_Attenuated_Mean_6_RPO(i) = nanmean(Pt36_Ckov_Attenuated_6_RPO(:));
    Pt36_Ckov_Attenuated_Mean_6_LAO(i) = nanmean(Pt36_Ckov_Attenuated_6_LAO(:));
%     Pt36_Ckov_Attenuated_Mean_10_RPO(i) = nanmean(Pt36_Ckov_Attenuated_10_RPO(:));
%     Pt36_Ckov_Attenuated_Mean_10_LAO(i) = nanmean(Pt36_Ckov_Attenuated_10_LAO(:));
%     
    clear Pt36_HU_Attenuated_6 Pt36_Ckov_Attenuated_6 Pt36_HU_Attenuated_10 Pt36_Ckov_Attenuated_10
    clear Pt36_Ckov_Unattenuated_6 Pt36_HU_Unattenuated_6 Pt36_Ckov_Unattenuated_10 Pt36_HU_Unattenuated_10
end

figure(100)
scatter(Pt36_HU_Unattenuated_Mean_RPO(:), Pt36_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt36_HU_Unattenuated_Mean_LAO(:), Pt36_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt36_HU_Attenuated_Mean_RPO(:), Pt36_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt36_HU_Attenuated_Mean_LAO(:), Pt36_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;

% 
% figure(101)
% scatter(Pt36_HU_Unattenuated_Mean_RPO(:), Pt36_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% hold on
% scatter(Pt36_HU_Unattenuated_Mean_LAO(:), Pt36_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% scatter(Pt36_HU_Attenuated_Mean_RPO(:), Pt36_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% scatter(Pt36_HU_Attenuated_Mean_LAO(:), Pt36_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% xlim([-200 150]), 
% ylim([0 4e4])
% axy = gca;
% xlabel('Surface Sampled Radiodensity (HU)')
% ylabel('Cherenkov / Dose (cpGy)')
% axy.FontSize = 18;
% 
%% PT37
figure(100)
clf
clear Pt37_HU_Unattenuated_Mean_RPO Pt37_HU_Attenuated_Mean_LAO
clear Pt37_Ckov_Attenuated_Mean_6_RPO Pt37_Ckov_Unattenuated_Mean_6_RPO Pt37_Ckov_Attenuated_Mean_6_LAO Pt37_Ckov_Unattenuated_Mean_6_LAO
clear Pt37_Ckov_Attenuated_Mean_10_RPO Pt37_Ckov_Unattenuated_Mean_10_RPO Pt37_Ckov_Attenuated_Mean_10_LAO Pt37_Ckov_Unattenuated_Mean_10_LAO
for i = 1:10
    m_roi = Pt37_DN_ROIs_HHU_Unattenuated(:,:,i);
    % HU
    Pt37_HU_Unattenuated_RPO = Pt37_CT_HU_Map_RPO.*m_roi; 
    Pt37_HU_Unattenuated_RPO(Pt37_HU_Unattenuated_RPO==0)=nan;
    Pt37_HU_Unattenuated_LAO = Pt37_CT_HU_Map_LAO.*m_roi; 
    Pt37_HU_Unattenuated_LAO(Pt37_HU_Unattenuated_LAO==0)=nan;
    
    %6X
    Pt37_Ckov_Unattenuated_6_RPO = Pt37_RPO_CkovDoseNorm_6.*m_roi;
    Pt37_Ckov_Unattenuated_6_RPO(Pt37_Ckov_Unattenuated_6_RPO==0)=nan;
    Pt37_Ckov_Unattenuated_6_LAO = Pt37_LAO_CkovDoseNorm_6.*m_roi;
    Pt37_Ckov_Unattenuated_6_LAO(Pt37_Ckov_Unattenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt37_Ckov_Unattenuated_10_RPO = Pt37_RPO_CkovDoseNorm_10.*m_roi;
%     Pt37_Ckov_Unattenuated_10_RPO(Pt37_Ckov_Unattenuated_10_RPO==0)=nan;
%     Pt37_Ckov_Unattenuated_10_LAO = Pt37_LAO_CkovDoseNorm_10.*m_roi;
%     Pt37_Ckov_Unattenuated_10_LAO(Pt37_Ckov_Unattenuated_10_LAO==0)=nan;
%     
    Pt37_HU_Unattenuated_Mean_RPO(i) = nanmean(Pt37_HU_Unattenuated_RPO(:));
    Pt37_HU_Unattenuated_Mean_LAO(i) = nanmean(Pt37_HU_Unattenuated_LAO(:));

    Pt37_Ckov_Unattenuated_Mean_6_RPO(i) = nanmean(Pt37_Ckov_Unattenuated_6_RPO(:));
    Pt37_Ckov_Unattenuated_Mean_6_LAO(i) = nanmean(Pt37_Ckov_Unattenuated_6_LAO(:));
%     Pt37_Ckov_Unattenuated_Mean_10_RPO(i) = nanmean(Pt37_Ckov_Unattenuated_10_RPO(:));
%     Pt37_Ckov_Unattenuated_Mean_10_LAO(i) = nanmean(Pt37_Ckov_Unattenuated_10_LAO(:));
%     
    % ATTENUATED
    m_roi = Pt37_DN_ROIs_HHU_Attenuated(:,:,i);
     % HU
    Pt37_HU_Attenuated_RPO = Pt37_CT_HU_Map_RPO.*m_roi; 
    Pt37_HU_Attenuated_RPO(Pt37_HU_Attenuated_RPO==0)=nan;
    Pt37_HU_Attenuated_LAO = Pt37_CT_HU_Map_LAO.*m_roi; 
    Pt37_HU_Attenuated_LAO(Pt37_HU_Attenuated_LAO==0)=nan;
    
    %6X
    Pt37_Ckov_Attenuated_6_RPO = Pt37_RPO_CkovDoseNorm_6.*m_roi;
    Pt37_Ckov_Attenuated_6_RPO(Pt37_Ckov_Attenuated_6_RPO==0)=nan;
    Pt37_Ckov_Attenuated_6_LAO = Pt37_LAO_CkovDoseNorm_6.*m_roi;
    Pt37_Ckov_Attenuated_6_LAO(Pt37_Ckov_Attenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt37_Ckov_Attenuated_10_RPO = Pt37_RPO_CkovDoseNorm_10.*m_roi;
%     Pt37_Ckov_Attenuated_10_RPO(Pt37_Ckov_Attenuated_10_RPO==0)=nan;
%     Pt37_Ckov_Attenuated_10_LAO = Pt37_LAO_CkovDoseNorm_10.*m_roi;
%     Pt37_Ckov_Attenuated_10_LAO(Pt37_Ckov_Attenuated_10_LAO==0)=nan;
%     
    Pt37_HU_Attenuated_Mean_RPO(i) = nanmean(Pt37_HU_Attenuated_RPO(:));
    Pt37_HU_Attenuated_Mean_LAO(i) = nanmean(Pt37_HU_Attenuated_LAO(:));

    Pt37_Ckov_Attenuated_Mean_6_RPO(i) = nanmean(Pt37_Ckov_Attenuated_6_RPO(:));
    Pt37_Ckov_Attenuated_Mean_6_LAO(i) = nanmean(Pt37_Ckov_Attenuated_6_LAO(:));
%     Pt37_Ckov_Attenuated_Mean_10_RPO(i) = nanmean(Pt37_Ckov_Attenuated_10_RPO(:));
%     Pt37_Ckov_Attenuated_Mean_10_LAO(i) = nanmean(Pt37_Ckov_Attenuated_10_LAO(:));
%     
    clear Pt37_HU_Attenuated_6 Pt37_Ckov_Attenuated_6 Pt37_HU_Attenuated_10 Pt37_Ckov_Attenuated_10
    clear Pt37_Ckov_Unattenuated_6 Pt37_HU_Unattenuated_6 Pt37_Ckov_Unattenuated_10 Pt37_HU_Unattenuated_10
end

figure(100)
scatter(Pt37_HU_Unattenuated_Mean_RPO(:), Pt37_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt37_HU_Unattenuated_Mean_LAO(:), Pt37_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt37_HU_Attenuated_Mean_RPO(:), Pt37_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt37_HU_Attenuated_Mean_LAO(:), Pt37_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;

% 
% figure(101)
% scatter(Pt37_HU_Unattenuated_Mean_RPO(:), Pt37_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% hold on
% scatter(Pt37_HU_Unattenuated_Mean_LAO(:), Pt37_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% scatter(Pt37_HU_Attenuated_Mean_RPO(:), Pt37_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% scatter(Pt37_HU_Attenuated_Mean_LAO(:), Pt37_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% xlim([-200 150]), 
% ylim([0 4e4])
% axy = gca;
% xlabel('Surface Sampled Radiodensity (HU)')
% ylabel('Cherenkov / Dose (cpGy)')
% axy.FontSize = 18;
% 
% 
%% PT44
figure(100)
clf
clear Pt44_HU_Unattenuated_Mean_RPO Pt44_HU_Attenuated_Mean_LAO
clear Pt44_Ckov_Attenuated_Mean_6_RPO Pt44_Ckov_Unattenuated_Mean_6_RPO Pt44_Ckov_Attenuated_Mean_6_LAO Pt44_Ckov_Unattenuated_Mean_6_LAO
clear Pt44_Ckov_Attenuated_Mean_10_RPO Pt44_Ckov_Unattenuated_Mean_10_RPO Pt44_Ckov_Attenuated_Mean_10_LAO Pt44_Ckov_Unattenuated_Mean_10_LAO
for i = 1:10
    m_roi = Pt44_DN_ROIs_HHU_Unattenuated(:,:,i);
    % HU
    Pt44_HU_Unattenuated_RPO = Pt44_CT_HU_Map_RPO.*m_roi; 
    Pt44_HU_Unattenuated_RPO(Pt44_HU_Unattenuated_RPO==0)=nan;
    Pt44_HU_Unattenuated_LAO = Pt44_CT_HU_Map_LAO.*m_roi; 
    Pt44_HU_Unattenuated_LAO(Pt44_HU_Unattenuated_LAO==0)=nan;
    
    %6X
    Pt44_Ckov_Unattenuated_6_RPO = Pt44_RPO_CkovDoseNorm_6.*m_roi;
    Pt44_Ckov_Unattenuated_6_RPO(Pt44_Ckov_Unattenuated_6_RPO==0)=nan;
    Pt44_Ckov_Unattenuated_6_LAO = Pt44_LAO_CkovDoseNorm_6.*m_roi;
    Pt44_Ckov_Unattenuated_6_LAO(Pt44_Ckov_Unattenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt44_Ckov_Unattenuated_10_RPO = Pt44_RPO_CkovDoseNorm_10.*m_roi;
%     Pt44_Ckov_Unattenuated_10_RPO(Pt44_Ckov_Unattenuated_10_RPO==0)=nan;
%     Pt44_Ckov_Unattenuated_10_LAO = Pt44_LAO_CkovDoseNorm_10.*m_roi;
%     Pt44_Ckov_Unattenuated_10_LAO(Pt44_Ckov_Unattenuated_10_LAO==0)=nan;
%     
    Pt44_HU_Unattenuated_Mean_RPO(i) = nanmean(Pt44_HU_Unattenuated_RPO(:));
    Pt44_HU_Unattenuated_Mean_LAO(i) = nanmean(Pt44_HU_Unattenuated_LAO(:));

    Pt44_Ckov_Unattenuated_Mean_6_RPO(i) = nanmean(Pt44_Ckov_Unattenuated_6_RPO(:));
    Pt44_Ckov_Unattenuated_Mean_6_LAO(i) = nanmean(Pt44_Ckov_Unattenuated_6_LAO(:));
%     Pt44_Ckov_Unattenuated_Mean_10_RPO(i) = nanmean(Pt44_Ckov_Unattenuated_10_RPO(:));
%     Pt44_Ckov_Unattenuated_Mean_10_LAO(i) = nanmean(Pt44_Ckov_Unattenuated_10_LAO(:));
%     
    % ATTENUATED
    m_roi = Pt44_DN_ROIs_HHU_Attenuated(:,:,i);
     % HU
    Pt44_HU_Attenuated_RPO = Pt44_CT_HU_Map_RPO.*m_roi; 
    Pt44_HU_Attenuated_RPO(Pt44_HU_Attenuated_RPO==0)=nan;
    Pt44_HU_Attenuated_LAO = Pt44_CT_HU_Map_LAO.*m_roi; 
    Pt44_HU_Attenuated_LAO(Pt44_HU_Attenuated_LAO==0)=nan;
    
    %6X
    Pt44_Ckov_Attenuated_6_RPO = Pt44_RPO_CkovDoseNorm_6.*m_roi;
    Pt44_Ckov_Attenuated_6_RPO(Pt44_Ckov_Attenuated_6_RPO==0)=nan;
    Pt44_Ckov_Attenuated_6_LAO = Pt44_LAO_CkovDoseNorm_6.*m_roi;
    Pt44_Ckov_Attenuated_6_LAO(Pt44_Ckov_Attenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt44_Ckov_Attenuated_10_RPO = Pt44_RPO_CkovDoseNorm_10.*m_roi;
%     Pt44_Ckov_Attenuated_10_RPO(Pt44_Ckov_Attenuated_10_RPO==0)=nan;
%     Pt44_Ckov_Attenuated_10_LAO = Pt44_LAO_CkovDoseNorm_10.*m_roi;
%     Pt44_Ckov_Attenuated_10_LAO(Pt44_Ckov_Attenuated_10_LAO==0)=nan;
%     
    Pt44_HU_Attenuated_Mean_RPO(i) = nanmean(Pt44_HU_Attenuated_RPO(:));
    Pt44_HU_Attenuated_Mean_LAO(i) = nanmean(Pt44_HU_Attenuated_LAO(:));

    Pt44_Ckov_Attenuated_Mean_6_RPO(i) = nanmean(Pt44_Ckov_Attenuated_6_RPO(:));
    Pt44_Ckov_Attenuated_Mean_6_LAO(i) = nanmean(Pt44_Ckov_Attenuated_6_LAO(:));
%     Pt44_Ckov_Attenuated_Mean_10_RPO(i) = nanmean(Pt44_Ckov_Attenuated_10_RPO(:));
%     Pt44_Ckov_Attenuated_Mean_10_LAO(i) = nanmean(Pt44_Ckov_Attenuated_10_LAO(:));
%     
    clear Pt44_HU_Attenuated_6 Pt44_Ckov_Attenuated_6 Pt44_HU_Attenuated_10 Pt44_Ckov_Attenuated_10
    clear Pt44_Ckov_Unattenuated_6 Pt44_HU_Unattenuated_6 Pt44_Ckov_Unattenuated_10 Pt44_HU_Unattenuated_10
end

figure(100)
scatter(Pt44_HU_Unattenuated_Mean_RPO(:), Pt44_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt44_HU_Unattenuated_Mean_LAO(:), Pt44_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt44_HU_Attenuated_Mean_RPO(:), Pt44_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt44_HU_Attenuated_Mean_LAO(:), Pt44_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;

% 
% figure(101)
% scatter(Pt44_HU_Unattenuated_Mean_RPO(:), Pt44_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% hold on
% scatter(Pt44_HU_Unattenuated_Mean_LAO(:), Pt44_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% scatter(Pt44_HU_Attenuated_Mean_RPO(:), Pt44_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% scatter(Pt44_HU_Attenuated_Mean_LAO(:), Pt44_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% xlim([-200 150]), 
% ylim([0 4e4])
% axy = gca;
% xlabel('Surface Sampled Radiodensity (HU)')
% ylabel('Cherenkov / Dose (cpGy)')
% axy.FontSize = 18;
% 
%% PT56
figure(100)
clf
clear Pt56_HU_Unattenuated_Mean_RPO Pt56_HU_Attenuated_Mean_LAO
clear Pt56_Ckov_Attenuated_Mean_6_RPO Pt56_Ckov_Unattenuated_Mean_6_RPO Pt56_Ckov_Attenuated_Mean_6_LAO Pt56_Ckov_Unattenuated_Mean_6_LAO
clear Pt56_Ckov_Attenuated_Mean_10_RPO Pt56_Ckov_Unattenuated_Mean_10_RPO Pt56_Ckov_Attenuated_Mean_10_LAO Pt56_Ckov_Unattenuated_Mean_10_LAO
for i = 1:10
    m_roi = Pt56_DN_ROIs_HHU_Unattenuated(:,:,i);
    % HU
    Pt56_HU_Unattenuated_RPO = Pt56_CT_HU_Map_RPO.*m_roi; 
    Pt56_HU_Unattenuated_RPO(Pt56_HU_Unattenuated_RPO==0)=nan;
    Pt56_HU_Unattenuated_LAO = Pt56_CT_HU_Map_LAO.*m_roi; 
    Pt56_HU_Unattenuated_LAO(Pt56_HU_Unattenuated_LAO==0)=nan;
    
    %6X
    Pt56_Ckov_Unattenuated_6_RPO = Pt56_RPO_CkovDoseNorm_6.*m_roi;
    Pt56_Ckov_Unattenuated_6_RPO(Pt56_Ckov_Unattenuated_6_RPO==0)=nan;
    Pt56_Ckov_Unattenuated_6_LAO = Pt56_LAO_CkovDoseNorm_6.*m_roi;
    Pt56_Ckov_Unattenuated_6_LAO(Pt56_Ckov_Unattenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt56_Ckov_Unattenuated_10_RPO = Pt56_RPO_CkovDoseNorm_10.*m_roi;
%     Pt56_Ckov_Unattenuated_10_RPO(Pt56_Ckov_Unattenuated_10_RPO==0)=nan;
%     Pt56_Ckov_Unattenuated_10_LAO = Pt56_LAO_CkovDoseNorm_10.*m_roi;
%     Pt56_Ckov_Unattenuated_10_LAO(Pt56_Ckov_Unattenuated_10_LAO==0)=nan;
%     
    Pt56_HU_Unattenuated_Mean_RPO(i) = nanmean(Pt56_HU_Unattenuated_RPO(:));
    Pt56_HU_Unattenuated_Mean_LAO(i) = nanmean(Pt56_HU_Unattenuated_LAO(:));

    Pt56_Ckov_Unattenuated_Mean_6_RPO(i) = nanmean(Pt56_Ckov_Unattenuated_6_RPO(:));
    Pt56_Ckov_Unattenuated_Mean_6_LAO(i) = nanmean(Pt56_Ckov_Unattenuated_6_LAO(:));
%     Pt56_Ckov_Unattenuated_Mean_10_RPO(i) = nanmean(Pt56_Ckov_Unattenuated_10_RPO(:));
%     Pt56_Ckov_Unattenuated_Mean_10_LAO(i) = nanmean(Pt56_Ckov_Unattenuated_10_LAO(:));
%     
    % ATTENUATED
    m_roi = Pt56_DN_ROIs_HHU_Attenuated(:,:,i);
     % HU
    Pt56_HU_Attenuated_RPO = Pt56_CT_HU_Map_RPO.*m_roi; 
    Pt56_HU_Attenuated_RPO(Pt56_HU_Attenuated_RPO==0)=nan;
    Pt56_HU_Attenuated_LAO = Pt56_CT_HU_Map_LAO.*m_roi; 
    Pt56_HU_Attenuated_LAO(Pt56_HU_Attenuated_LAO==0)=nan;
    
    %6X
    Pt56_Ckov_Attenuated_6_RPO = Pt56_RPO_CkovDoseNorm_6.*m_roi;
    Pt56_Ckov_Attenuated_6_RPO(Pt56_Ckov_Attenuated_6_RPO==0)=nan;
    Pt56_Ckov_Attenuated_6_LAO = Pt56_LAO_CkovDoseNorm_6.*m_roi;
    Pt56_Ckov_Attenuated_6_LAO(Pt56_Ckov_Attenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt56_Ckov_Attenuated_10_RPO = Pt56_RPO_CkovDoseNorm_10.*m_roi;
%     Pt56_Ckov_Attenuated_10_RPO(Pt56_Ckov_Attenuated_10_RPO==0)=nan;
%     Pt56_Ckov_Attenuated_10_LAO = Pt56_LAO_CkovDoseNorm_10.*m_roi;
%     Pt56_Ckov_Attenuated_10_LAO(Pt56_Ckov_Attenuated_10_LAO==0)=nan;
%     
    Pt56_HU_Attenuated_Mean_RPO(i) = nanmean(Pt56_HU_Attenuated_RPO(:));
    Pt56_HU_Attenuated_Mean_LAO(i) = nanmean(Pt56_HU_Attenuated_LAO(:));

    Pt56_Ckov_Attenuated_Mean_6_RPO(i) = nanmean(Pt56_Ckov_Attenuated_6_RPO(:));
    Pt56_Ckov_Attenuated_Mean_6_LAO(i) = nanmean(Pt56_Ckov_Attenuated_6_LAO(:));
%     Pt56_Ckov_Attenuated_Mean_10_RPO(i) = nanmean(Pt56_Ckov_Attenuated_10_RPO(:));
%     Pt56_Ckov_Attenuated_Mean_10_LAO(i) = nanmean(Pt56_Ckov_Attenuated_10_LAO(:));
%     
    clear Pt56_HU_Attenuated_6 Pt56_Ckov_Attenuated_6 Pt56_HU_Attenuated_10 Pt56_Ckov_Attenuated_10
    clear Pt56_Ckov_Unattenuated_6 Pt56_HU_Unattenuated_6 Pt56_Ckov_Unattenuated_10 Pt56_HU_Unattenuated_10
end

figure(100)
scatter(Pt56_HU_Unattenuated_Mean_RPO(:), Pt56_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt56_HU_Unattenuated_Mean_LAO(:), Pt56_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt56_HU_Attenuated_Mean_RPO(:), Pt56_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt56_HU_Attenuated_Mean_LAO(:), Pt56_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;

% 
% figure(101)
% scatter(Pt56_HU_Unattenuated_Mean_RPO(:), Pt56_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% hold on
% scatter(Pt56_HU_Unattenuated_Mean_LAO(:), Pt56_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% scatter(Pt56_HU_Attenuated_Mean_RPO(:), Pt56_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% scatter(Pt56_HU_Attenuated_Mean_LAO(:), Pt56_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% xlim([-200 150]), 
% ylim([0 4e4])
% axy = gca;
% xlabel('Surface Sampled Radiodensity (HU)')
% ylabel('Cherenkov / Dose (cpGy)')
% axy.FontSize = 18;
% 
% 

%% PT58
figure(100)
clf
clear Pt58_HU_Unattenuated_Mean_RPO Pt58_HU_Attenuated_Mean_LAO
clear Pt58_Ckov_Attenuated_Mean_6_RPO Pt58_Ckov_Unattenuated_Mean_6_RPO Pt58_Ckov_Attenuated_Mean_6_LAO Pt58_Ckov_Unattenuated_Mean_6_LAO
clear Pt58_Ckov_Attenuated_Mean_10_RPO Pt58_Ckov_Unattenuated_Mean_10_RPO Pt58_Ckov_Attenuated_Mean_10_LAO Pt58_Ckov_Unattenuated_Mean_10_LAO
for i = 1:10
    m_roi = Pt58_DN_ROIs_HHU_Unattenuated(:,:,i);
    % HU
    Pt58_HU_Unattenuated_RPO = Pt58_CT_HU_Map_RPO.*m_roi; 
    Pt58_HU_Unattenuated_RPO(Pt58_HU_Unattenuated_RPO==0)=nan;
    Pt58_HU_Unattenuated_LAO = Pt58_CT_HU_Map_LAO.*m_roi; 
    Pt58_HU_Unattenuated_LAO(Pt58_HU_Unattenuated_LAO==0)=nan;
    
    %6X
    Pt58_Ckov_Unattenuated_6_RPO = Pt58_RPO_CkovDoseNorm_6.*m_roi;
    Pt58_Ckov_Unattenuated_6_RPO(Pt58_Ckov_Unattenuated_6_RPO==0)=nan;
    Pt58_Ckov_Unattenuated_6_LAO = Pt58_LAO_CkovDoseNorm_6.*m_roi;
    Pt58_Ckov_Unattenuated_6_LAO(Pt58_Ckov_Unattenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt58_Ckov_Unattenuated_10_RPO = Pt58_RPO_CkovDoseNorm_10.*m_roi;
%     Pt58_Ckov_Unattenuated_10_RPO(Pt58_Ckov_Unattenuated_10_RPO==0)=nan;
%     Pt58_Ckov_Unattenuated_10_LAO = Pt58_LAO_CkovDoseNorm_10.*m_roi;
%     Pt58_Ckov_Unattenuated_10_LAO(Pt58_Ckov_Unattenuated_10_LAO==0)=nan;
%     
    Pt58_HU_Unattenuated_Mean_RPO(i) = nanmean(Pt58_HU_Unattenuated_RPO(:));
    Pt58_HU_Unattenuated_Mean_LAO(i) = nanmean(Pt58_HU_Unattenuated_LAO(:));

    Pt58_Ckov_Unattenuated_Mean_6_RPO(i) = nanmean(Pt58_Ckov_Unattenuated_6_RPO(:));
    Pt58_Ckov_Unattenuated_Mean_6_LAO(i) = nanmean(Pt58_Ckov_Unattenuated_6_LAO(:));
%     Pt58_Ckov_Unattenuated_Mean_10_RPO(i) = nanmean(Pt58_Ckov_Unattenuated_10_RPO(:));
%     Pt58_Ckov_Unattenuated_Mean_10_LAO(i) = nanmean(Pt58_Ckov_Unattenuated_10_LAO(:));
%     
    % ATTENUATED
    m_roi = Pt58_DN_ROIs_HHU_Attenuated(:,:,i);
     % HU
    Pt58_HU_Attenuated_RPO = Pt58_CT_HU_Map_RPO.*m_roi; 
    Pt58_HU_Attenuated_RPO(Pt58_HU_Attenuated_RPO==0)=nan;
    Pt58_HU_Attenuated_LAO = Pt58_CT_HU_Map_LAO.*m_roi; 
    Pt58_HU_Attenuated_LAO(Pt58_HU_Attenuated_LAO==0)=nan;
    
    %6X
    Pt58_Ckov_Attenuated_6_RPO = Pt58_RPO_CkovDoseNorm_6.*m_roi;
    Pt58_Ckov_Attenuated_6_RPO(Pt58_Ckov_Attenuated_6_RPO==0)=nan;
    Pt58_Ckov_Attenuated_6_LAO = Pt58_LAO_CkovDoseNorm_6.*m_roi;
    Pt58_Ckov_Attenuated_6_LAO(Pt58_Ckov_Attenuated_6_LAO==0)=nan;
    
%     %10X
%     Pt58_Ckov_Attenuated_10_RPO = Pt58_RPO_CkovDoseNorm_10.*m_roi;
%     Pt58_Ckov_Attenuated_10_RPO(Pt58_Ckov_Attenuated_10_RPO==0)=nan;
%     Pt58_Ckov_Attenuated_10_LAO = Pt58_LAO_CkovDoseNorm_10.*m_roi;
%     Pt58_Ckov_Attenuated_10_LAO(Pt58_Ckov_Attenuated_10_LAO==0)=nan;
%     
    Pt58_HU_Attenuated_Mean_RPO(i) = nanmean(Pt58_HU_Attenuated_RPO(:));
    Pt58_HU_Attenuated_Mean_LAO(i) = nanmean(Pt58_HU_Attenuated_LAO(:));

    Pt58_Ckov_Attenuated_Mean_6_RPO(i) = nanmean(Pt58_Ckov_Attenuated_6_RPO(:));
    Pt58_Ckov_Attenuated_Mean_6_LAO(i) = nanmean(Pt58_Ckov_Attenuated_6_LAO(:));
%     Pt58_Ckov_Attenuated_Mean_10_RPO(i) = nanmean(Pt58_Ckov_Attenuated_10_RPO(:));
%     Pt58_Ckov_Attenuated_Mean_10_LAO(i) = nanmean(Pt58_Ckov_Attenuated_10_LAO(:));
%     
    clear Pt58_HU_Attenuated_6 Pt58_Ckov_Attenuated_6 Pt58_HU_Attenuated_10 Pt58_Ckov_Attenuated_10
    clear Pt58_Ckov_Unattenuated_6 Pt58_HU_Unattenuated_6 Pt58_Ckov_Unattenuated_10 Pt58_HU_Unattenuated_10
end

figure(100)
scatter(Pt58_HU_Unattenuated_Mean_RPO(:), Pt58_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt58_HU_Unattenuated_Mean_LAO(:), Pt58_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt58_HU_Attenuated_Mean_RPO(:), Pt58_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt58_HU_Attenuated_Mean_LAO(:), Pt58_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;

% 
% figure(101)
% scatter(Pt58_HU_Unattenuated_Mean_RPO(:), Pt58_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% hold on
% scatter(Pt58_HU_Unattenuated_Mean_LAO(:), Pt58_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
% scatter(Pt58_HU_Attenuated_Mean_RPO(:), Pt58_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% scatter(Pt58_HU_Attenuated_Mean_LAO(:), Pt58_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
%     'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
% xlim([-200 150]), 
% ylim([0 4e4])
% axy = gca;
% xlabel('Surface Sampled Radiodensity (HU)')
% ylabel('Cherenkov / Dose (cpGy)')
% axy.FontSize = 18;
% 
%% PT32
figure(100)
clf
clear Pt32_HU_Unattenuated_Mean_RPO Pt32_HU_Attenuated_Mean_LAO
clear Pt32_Ckov_Attenuated_Mean_6_RPO Pt32_Ckov_Unattenuated_Mean_6_RPO Pt32_Ckov_Attenuated_Mean_6_LAO Pt32_Ckov_Unattenuated_Mean_6_LAO
clear Pt32_Ckov_Attenuated_Mean_10_RPO Pt32_Ckov_Unattenuated_Mean_10_RPO Pt32_Ckov_Attenuated_Mean_10_LAO Pt32_Ckov_Unattenuated_Mean_10_LAO
for i = 1:10
    m_roi = Pt32_DN_ROIs_HHU_Unattenuated(:,:,i);
    %HU
    Pt32_HU_Unattenuated_RPO = Pt32_CT_HU_Map_RPO.*m_roi; 
    Pt32_HU_Unattenuated_RPO(Pt32_HU_Unattenuated_RPO==0)=nan;
    Pt32_HU_Unattenuated_LAO = Pt32_CT_HU_Map_LAO.*m_roi; 
    Pt32_HU_Unattenuated_LAO(Pt32_HU_Unattenuated_LAO==0)=nan;
    
    %6X
    Pt32_Ckov_Unattenuated_6_RPO = Pt32_RPO_CkovDoseNorm_6.*m_roi;
    Pt32_Ckov_Unattenuated_6_RPO(Pt32_Ckov_Unattenuated_6_RPO==0)=nan;
    Pt32_Ckov_Unattenuated_6_LAO = Pt32_LAO_CkovDoseNorm_6.*m_roi;
    Pt32_Ckov_Unattenuated_6_LAO(Pt32_Ckov_Unattenuated_6_LAO==0)=nan;
    
    %10X
    Pt32_Ckov_Unattenuated_10_RPO = Pt32_RPO_CkovDoseNorm_10.*m_roi;
    Pt32_Ckov_Unattenuated_10_RPO(Pt32_Ckov_Unattenuated_10_RPO==0)=nan;
    Pt32_Ckov_Unattenuated_10_LAO = Pt32_LAO_CkovDoseNorm_10.*m_roi;
    Pt32_Ckov_Unattenuated_10_LAO(Pt32_Ckov_Unattenuated_10_LAO==0)=nan;
    
    Pt32_HU_Unattenuated_Mean_RPO(i) = nanmean(Pt32_HU_Unattenuated_RPO(:));
    Pt32_HU_Unattenuated_Mean_LAO(i) = nanmean(Pt32_HU_Unattenuated_LAO(:));

    Pt32_Ckov_Unattenuated_Mean_6_RPO(i) = nanmean(Pt32_Ckov_Unattenuated_6_RPO(:));
    Pt32_Ckov_Unattenuated_Mean_6_LAO(i) = nanmean(Pt32_Ckov_Unattenuated_6_LAO(:));
    Pt32_Ckov_Unattenuated_Mean_10_RPO(i) = nanmean(Pt32_Ckov_Unattenuated_10_RPO(:));
    Pt32_Ckov_Unattenuated_Mean_10_LAO(i) = nanmean(Pt32_Ckov_Unattenuated_10_LAO(:));
    
    %ATTENUATED
    m_roi = Pt32_DN_ROIs_HHU_Attenuated(:,:,i);
    %HU
    Pt32_HU_Attenuated_RPO = Pt32_CT_HU_Map_RPO.*m_roi; 
    Pt32_HU_Attenuated_RPO(Pt32_HU_Attenuated_RPO==0)=nan;
    Pt32_HU_Attenuated_LAO = Pt32_CT_HU_Map_LAO.*m_roi; 
    Pt32_HU_Attenuated_LAO(Pt32_HU_Attenuated_LAO==0)=nan;
    
    %6X
    Pt32_Ckov_Attenuated_6_RPO = Pt32_RPO_CkovDoseNorm_6.*m_roi;
    Pt32_Ckov_Attenuated_6_RPO(Pt32_Ckov_Attenuated_6_RPO==0)=nan;
    Pt32_Ckov_Attenuated_6_LAO = Pt32_LAO_CkovDoseNorm_6.*m_roi;
    Pt32_Ckov_Attenuated_6_LAO(Pt32_Ckov_Attenuated_6_LAO==0)=nan;
    
    %10X
    Pt32_Ckov_Attenuated_10_RPO = Pt32_RPO_CkovDoseNorm_10.*m_roi;
    Pt32_Ckov_Attenuated_10_RPO(Pt32_Ckov_Attenuated_10_RPO==0)=nan;
    Pt32_Ckov_Attenuated_10_LAO = Pt32_LAO_CkovDoseNorm_10.*m_roi;
    Pt32_Ckov_Attenuated_10_LAO(Pt32_Ckov_Attenuated_10_LAO==0)=nan;
    
    Pt32_HU_Attenuated_Mean_RPO(i) = nanmean(Pt32_HU_Attenuated_RPO(:));
    Pt32_HU_Attenuated_Mean_LAO(i) = nanmean(Pt32_HU_Attenuated_LAO(:));

    Pt32_Ckov_Attenuated_Mean_6_RPO(i) = nanmean(Pt32_Ckov_Attenuated_6_RPO(:));
    Pt32_Ckov_Attenuated_Mean_6_LAO(i) = nanmean(Pt32_Ckov_Attenuated_6_LAO(:));
    Pt32_Ckov_Attenuated_Mean_10_RPO(i) = nanmean(Pt32_Ckov_Attenuated_10_RPO(:));
    Pt32_Ckov_Attenuated_Mean_10_LAO(i) = nanmean(Pt32_Ckov_Attenuated_10_LAO(:));
    
    clear Pt32_HU_Attenuated_6 Pt32_Ckov_Attenuated_6 Pt32_HU_Attenuated_10 Pt32_Ckov_Attenuated_10
    clear Pt32_Ckov_Unattenuated_6 Pt32_HU_Unattenuated_6 Pt32_Ckov_Unattenuated_10 Pt32_HU_Unattenuated_10
end

figure(100)
scatter(Pt32_HU_Unattenuated_Mean_RPO(:), Pt32_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt32_HU_Unattenuated_Mean_LAO(:), Pt32_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_Attenuated_Mean_RPO(:), Pt32_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_Attenuated_Mean_LAO(:), Pt32_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;


figure(101)
scatter(Pt32_HU_Unattenuated_Mean_RPO(:), Pt32_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt32_HU_Unattenuated_Mean_LAO(:), Pt32_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_Attenuated_Mean_RPO(:), Pt32_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_Attenuated_Mean_LAO(:), Pt32_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;

%% PT39
figure(100)
clf
clear Pt39_HU_Unattenuated_Mean_RPO Pt39_HU_Attenuated_Mean_LAO
clear Pt39_Ckov_Attenuated_Mean_6_RPO Pt39_Ckov_Unattenuated_Mean_6_RPO Pt39_Ckov_Attenuated_Mean_6_LAO Pt39_Ckov_Unattenuated_Mean_6_LAO
clear Pt39_Ckov_Attenuated_Mean_10_RPO Pt39_Ckov_Unattenuated_Mean_10_RPO Pt39_Ckov_Attenuated_Mean_10_LAO Pt39_Ckov_Unattenuated_Mean_10_LAO
for i = 1:10
    m_roi = Pt39_DN_ROIs_HHU_Unattenuated(:,:,i);
    %HU
    Pt39_HU_Unattenuated_RPO = Pt39_CT_HU_Map_RPO.*m_roi; 
    Pt39_HU_Unattenuated_RPO(Pt39_HU_Unattenuated_RPO==0)=nan;
    Pt39_HU_Unattenuated_LAO = Pt39_CT_HU_Map_LAO.*m_roi; 
    Pt39_HU_Unattenuated_LAO(Pt39_HU_Unattenuated_LAO==0)=nan;
    
    %6X
    Pt39_Ckov_Unattenuated_6_RPO = Pt39_RPO_CkovDoseNorm_6.*m_roi;
    Pt39_Ckov_Unattenuated_6_RPO(Pt39_Ckov_Unattenuated_6_RPO==0)=nan;
    Pt39_Ckov_Unattenuated_6_LAO = Pt39_LAO_CkovDoseNorm_6.*m_roi;
    Pt39_Ckov_Unattenuated_6_LAO(Pt39_Ckov_Unattenuated_6_LAO==0)=nan;
    
    %10X
    Pt39_Ckov_Unattenuated_10_RPO = Pt39_RPO_CkovDoseNorm_10.*m_roi;
    Pt39_Ckov_Unattenuated_10_RPO(Pt39_Ckov_Unattenuated_10_RPO==0)=nan;
    Pt39_Ckov_Unattenuated_10_LAO = Pt39_LAO_CkovDoseNorm_10.*m_roi;
    Pt39_Ckov_Unattenuated_10_LAO(Pt39_Ckov_Unattenuated_10_LAO==0)=nan;
    
    Pt39_HU_Unattenuated_Mean_RPO(i) = nanmean(Pt39_HU_Unattenuated_RPO(:));
    Pt39_HU_Unattenuated_Mean_LAO(i) = nanmean(Pt39_HU_Unattenuated_LAO(:));

    Pt39_Ckov_Unattenuated_Mean_6_RPO(i) = nanmean(Pt39_Ckov_Unattenuated_6_RPO(:));
    Pt39_Ckov_Unattenuated_Mean_6_LAO(i) = nanmean(Pt39_Ckov_Unattenuated_6_LAO(:));
    Pt39_Ckov_Unattenuated_Mean_10_RPO(i) = nanmean(Pt39_Ckov_Unattenuated_10_RPO(:));
    Pt39_Ckov_Unattenuated_Mean_10_LAO(i) = nanmean(Pt39_Ckov_Unattenuated_10_LAO(:));
    
    %ATTENUATED
    m_roi = Pt39_DN_ROIs_HHU_Attenuated(:,:,i);
    %HU
    Pt39_HU_Attenuated_RPO = Pt39_CT_HU_Map_RPO.*m_roi; 
    Pt39_HU_Attenuated_RPO(Pt39_HU_Attenuated_RPO==0)=nan;
    Pt39_HU_Attenuated_LAO = Pt39_CT_HU_Map_LAO.*m_roi; 
    Pt39_HU_Attenuated_LAO(Pt39_HU_Attenuated_LAO==0)=nan;
    
    %6X
    Pt39_Ckov_Attenuated_6_RPO = Pt39_RPO_CkovDoseNorm_6.*m_roi;
    Pt39_Ckov_Attenuated_6_RPO(Pt39_Ckov_Attenuated_6_RPO==0)=nan;
    Pt39_Ckov_Attenuated_6_LAO = Pt39_LAO_CkovDoseNorm_6.*m_roi;
    Pt39_Ckov_Attenuated_6_LAO(Pt39_Ckov_Attenuated_6_LAO==0)=nan;
    
    %10X
    Pt39_Ckov_Attenuated_10_RPO = Pt39_RPO_CkovDoseNorm_10.*m_roi;
    Pt39_Ckov_Attenuated_10_RPO(Pt39_Ckov_Attenuated_10_RPO==0)=nan;
    Pt39_Ckov_Attenuated_10_LAO = Pt39_LAO_CkovDoseNorm_10.*m_roi;
    Pt39_Ckov_Attenuated_10_LAO(Pt39_Ckov_Attenuated_10_LAO==0)=nan;
    
    Pt39_HU_Attenuated_Mean_RPO(i) = nanmean(Pt39_HU_Attenuated_RPO(:));
    Pt39_HU_Attenuated_Mean_LAO(i) = nanmean(Pt39_HU_Attenuated_LAO(:));

    Pt39_Ckov_Attenuated_Mean_6_RPO(i) = nanmean(Pt39_Ckov_Attenuated_6_RPO(:));
    Pt39_Ckov_Attenuated_Mean_6_LAO(i) = nanmean(Pt39_Ckov_Attenuated_6_LAO(:));
    Pt39_Ckov_Attenuated_Mean_10_RPO(i) = nanmean(Pt39_Ckov_Attenuated_10_RPO(:));
    Pt39_Ckov_Attenuated_Mean_10_LAO(i) = nanmean(Pt39_Ckov_Attenuated_10_LAO(:));
    
    clear Pt39_HU_Attenuated_6 Pt39_Ckov_Attenuated_6 Pt39_HU_Attenuated_10 Pt39_Ckov_Attenuated_10
    clear Pt39_Ckov_Unattenuated_6 Pt39_HU_Unattenuated_6 Pt39_Ckov_Unattenuated_10 Pt39_HU_Unattenuated_10
end

figure(100)
scatter(Pt39_HU_Unattenuated_Mean_RPO(:), Pt39_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt39_HU_Unattenuated_Mean_LAO(:), Pt39_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_Attenuated_Mean_RPO(:), Pt39_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_Attenuated_Mean_LAO(:), Pt39_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;


figure(101)
scatter(Pt39_HU_Unattenuated_Mean_RPO(:), Pt39_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt39_HU_Unattenuated_Mean_LAO(:), Pt39_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_Attenuated_Mean_RPO(:), Pt39_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_Attenuated_Mean_LAO(:), Pt39_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;

%% PT41
figure(100)
clf
clear Pt41_HU_Unattenuated_Mean_RPO Pt41_HU_Attenuated_Mean_LAO
clear Pt41_Ckov_Attenuated_Mean_6_RPO Pt41_Ckov_Unattenuated_Mean_6_RPO Pt41_Ckov_Attenuated_Mean_6_LAO Pt41_Ckov_Unattenuated_Mean_6_LAO
clear Pt41_Ckov_Attenuated_Mean_10_RPO Pt41_Ckov_Unattenuated_Mean_10_RPO Pt41_Ckov_Attenuated_Mean_10_LAO Pt41_Ckov_Unattenuated_Mean_10_LAO
for i = 1:10
    m_roi = Pt41_DN_ROIs_HHU_Unattenuated(:,:,i);
    %HU
    Pt41_HU_Unattenuated_RPO = Pt41_CT_HU_Map_RPO.*m_roi; 
    Pt41_HU_Unattenuated_RPO(Pt41_HU_Unattenuated_RPO==0)=nan;
    Pt41_HU_Unattenuated_LAO = Pt41_CT_HU_Map_LAO.*m_roi; 
    Pt41_HU_Unattenuated_LAO(Pt41_HU_Unattenuated_LAO==0)=nan;
    
    %6X
    Pt41_Ckov_Unattenuated_6_RPO = Pt41_RPO_CkovDoseNorm_6.*m_roi;
    Pt41_Ckov_Unattenuated_6_RPO(Pt41_Ckov_Unattenuated_6_RPO==0)=nan;
    Pt41_Ckov_Unattenuated_6_LAO = Pt41_LAO_CkovDoseNorm_6.*m_roi;
    Pt41_Ckov_Unattenuated_6_LAO(Pt41_Ckov_Unattenuated_6_LAO==0)=nan;
    
    %10X
    Pt41_Ckov_Unattenuated_10_RPO = Pt41_RPO_CkovDoseNorm_10.*m_roi;
    Pt41_Ckov_Unattenuated_10_RPO(Pt41_Ckov_Unattenuated_10_RPO==0)=nan;
    Pt41_Ckov_Unattenuated_10_LAO = Pt41_LAO_CkovDoseNorm_10.*m_roi;
    Pt41_Ckov_Unattenuated_10_LAO(Pt41_Ckov_Unattenuated_10_LAO==0)=nan;
    
    Pt41_HU_Unattenuated_Mean_RPO(i) = nanmean(Pt41_HU_Unattenuated_RPO(:));
    Pt41_HU_Unattenuated_Mean_LAO(i) = nanmean(Pt41_HU_Unattenuated_LAO(:));

    Pt41_Ckov_Unattenuated_Mean_6_RPO(i) = nanmean(Pt41_Ckov_Unattenuated_6_RPO(:));
    Pt41_Ckov_Unattenuated_Mean_6_LAO(i) = nanmean(Pt41_Ckov_Unattenuated_6_LAO(:));
    Pt41_Ckov_Unattenuated_Mean_10_RPO(i) = nanmean(Pt41_Ckov_Unattenuated_10_RPO(:));
    Pt41_Ckov_Unattenuated_Mean_10_LAO(i) = nanmean(Pt41_Ckov_Unattenuated_10_LAO(:));
    
    %ATTENUATED
    m_roi = Pt41_DN_ROIs_HHU_Attenuated(:,:,i);
    %HU
    Pt41_HU_Attenuated_RPO = Pt41_CT_HU_Map_RPO.*m_roi; 
    Pt41_HU_Attenuated_RPO(Pt41_HU_Attenuated_RPO==0)=nan;
    Pt41_HU_Attenuated_LAO = Pt41_CT_HU_Map_LAO.*m_roi; 
    Pt41_HU_Attenuated_LAO(Pt41_HU_Attenuated_LAO==0)=nan;
    
    %6X
    Pt41_Ckov_Attenuated_6_RPO = Pt41_RPO_CkovDoseNorm_6.*m_roi;
    Pt41_Ckov_Attenuated_6_RPO(Pt41_Ckov_Attenuated_6_RPO==0)=nan;
    Pt41_Ckov_Attenuated_6_LAO = Pt41_LAO_CkovDoseNorm_6.*m_roi;
    Pt41_Ckov_Attenuated_6_LAO(Pt41_Ckov_Attenuated_6_LAO==0)=nan;
    
    %10X
    Pt41_Ckov_Attenuated_10_RPO = Pt41_RPO_CkovDoseNorm_10.*m_roi;
    Pt41_Ckov_Attenuated_10_RPO(Pt41_Ckov_Attenuated_10_RPO==0)=nan;
    Pt41_Ckov_Attenuated_10_LAO = Pt41_LAO_CkovDoseNorm_10.*m_roi;
    Pt41_Ckov_Attenuated_10_LAO(Pt41_Ckov_Attenuated_10_LAO==0)=nan;
    
    Pt41_HU_Attenuated_Mean_RPO(i) = nanmean(Pt41_HU_Attenuated_RPO(:));
    Pt41_HU_Attenuated_Mean_LAO(i) = nanmean(Pt41_HU_Attenuated_LAO(:));

    Pt41_Ckov_Attenuated_Mean_6_RPO(i) = nanmean(Pt41_Ckov_Attenuated_6_RPO(:));
    Pt41_Ckov_Attenuated_Mean_6_LAO(i) = nanmean(Pt41_Ckov_Attenuated_6_LAO(:));
    Pt41_Ckov_Attenuated_Mean_10_RPO(i) = nanmean(Pt41_Ckov_Attenuated_10_RPO(:));
    Pt41_Ckov_Attenuated_Mean_10_LAO(i) = nanmean(Pt41_Ckov_Attenuated_10_LAO(:));
    
    clear Pt41_HU_Attenuated_6 Pt41_Ckov_Attenuated_6 Pt41_HU_Attenuated_10 Pt41_Ckov_Attenuated_10
    clear Pt41_Ckov_Unattenuated_6 Pt41_HU_Unattenuated_6 Pt41_Ckov_Unattenuated_10 Pt41_HU_Unattenuated_10
end

figure(100)
scatter(Pt41_HU_Unattenuated_Mean_RPO(:), Pt41_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt41_HU_Unattenuated_Mean_LAO(:), Pt41_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_Attenuated_Mean_RPO(:), Pt41_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_Attenuated_Mean_LAO(:), Pt41_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;


figure(101)
scatter(Pt41_HU_Unattenuated_Mean_RPO(:), Pt41_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt41_HU_Unattenuated_Mean_LAO(:), Pt41_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_Attenuated_Mean_RPO(:), Pt41_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_Attenuated_Mean_LAO(:), Pt41_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;

%% PT45
figure(100)
clf
clear Pt45_HU_Unattenuated_Mean_RPO Pt45_HU_Attenuated_Mean_LAO
clear Pt45_Ckov_Attenuated_Mean_6_RPO Pt45_Ckov_Unattenuated_Mean_6_RPO Pt45_Ckov_Attenuated_Mean_6_LAO Pt45_Ckov_Unattenuated_Mean_6_LAO
clear Pt45_Ckov_Attenuated_Mean_10_RPO Pt45_Ckov_Unattenuated_Mean_10_RPO Pt45_Ckov_Attenuated_Mean_10_LAO Pt45_Ckov_Unattenuated_Mean_10_LAO
for i = 1:10
    m_roi = Pt45_DN_ROIs_HHU_Unattenuated(:,:,i);
    %HU
    Pt45_HU_Unattenuated_RPO = Pt45_CT_HU_Map_RPO.*m_roi; 
    Pt45_HU_Unattenuated_RPO(Pt45_HU_Unattenuated_RPO==0)=nan;
    Pt45_HU_Unattenuated_LAO = Pt45_CT_HU_Map_LAO.*m_roi; 
    Pt45_HU_Unattenuated_LAO(Pt45_HU_Unattenuated_LAO==0)=nan;
    
    %6X
    Pt45_Ckov_Unattenuated_6_RPO = Pt45_RPO_CkovDoseNorm_6.*m_roi;
    Pt45_Ckov_Unattenuated_6_RPO(Pt45_Ckov_Unattenuated_6_RPO==0)=nan;
    Pt45_Ckov_Unattenuated_6_LAO = Pt45_LAO_CkovDoseNorm_6.*m_roi;
    Pt45_Ckov_Unattenuated_6_LAO(Pt45_Ckov_Unattenuated_6_LAO==0)=nan;
    
    %10X
    Pt45_Ckov_Unattenuated_10_RPO = Pt45_RPO_CkovDoseNorm_10.*m_roi;
    Pt45_Ckov_Unattenuated_10_RPO(Pt45_Ckov_Unattenuated_10_RPO==0)=nan;
    Pt45_Ckov_Unattenuated_10_LAO = Pt45_LAO_CkovDoseNorm_10.*m_roi;
    Pt45_Ckov_Unattenuated_10_LAO(Pt45_Ckov_Unattenuated_10_LAO==0)=nan;
    
    Pt45_HU_Unattenuated_Mean_RPO(i) = nanmean(Pt45_HU_Unattenuated_RPO(:));
    Pt45_HU_Unattenuated_Mean_LAO(i) = nanmean(Pt45_HU_Unattenuated_LAO(:));

    Pt45_Ckov_Unattenuated_Mean_6_RPO(i) = nanmean(Pt45_Ckov_Unattenuated_6_RPO(:));
    Pt45_Ckov_Unattenuated_Mean_6_LAO(i) = nanmean(Pt45_Ckov_Unattenuated_6_LAO(:));
    Pt45_Ckov_Unattenuated_Mean_10_RPO(i) = nanmean(Pt45_Ckov_Unattenuated_10_RPO(:));
    Pt45_Ckov_Unattenuated_Mean_10_LAO(i) = nanmean(Pt45_Ckov_Unattenuated_10_LAO(:));
    
    %ATTENUATED
    m_roi = Pt45_DN_ROIs_HHU_Attenuated(:,:,i);
    %HU
    Pt45_HU_Attenuated_RPO = Pt45_CT_HU_Map_RPO.*m_roi; 
    Pt45_HU_Attenuated_RPO(Pt45_HU_Attenuated_RPO==0)=nan;
    Pt45_HU_Attenuated_LAO = Pt45_CT_HU_Map_LAO.*m_roi; 
    Pt45_HU_Attenuated_LAO(Pt45_HU_Attenuated_LAO==0)=nan;
    
    %6X
    Pt45_Ckov_Attenuated_6_RPO = Pt45_RPO_CkovDoseNorm_6.*m_roi;
    Pt45_Ckov_Attenuated_6_RPO(Pt45_Ckov_Attenuated_6_RPO==0)=nan;
    Pt45_Ckov_Attenuated_6_LAO = Pt45_LAO_CkovDoseNorm_6.*m_roi;
    Pt45_Ckov_Attenuated_6_LAO(Pt45_Ckov_Attenuated_6_LAO==0)=nan;
    
    %10X
    Pt45_Ckov_Attenuated_10_RPO = Pt45_RPO_CkovDoseNorm_10.*m_roi;
    Pt45_Ckov_Attenuated_10_RPO(Pt45_Ckov_Attenuated_10_RPO==0)=nan;
    Pt45_Ckov_Attenuated_10_LAO = Pt45_LAO_CkovDoseNorm_10.*m_roi;
    Pt45_Ckov_Attenuated_10_LAO(Pt45_Ckov_Attenuated_10_LAO==0)=nan;
    
    Pt45_HU_Attenuated_Mean_RPO(i) = nanmean(Pt45_HU_Attenuated_RPO(:));
    Pt45_HU_Attenuated_Mean_LAO(i) = nanmean(Pt45_HU_Attenuated_LAO(:));

    Pt45_Ckov_Attenuated_Mean_6_RPO(i) = nanmean(Pt45_Ckov_Attenuated_6_RPO(:));
    Pt45_Ckov_Attenuated_Mean_6_LAO(i) = nanmean(Pt45_Ckov_Attenuated_6_LAO(:));
    Pt45_Ckov_Attenuated_Mean_10_RPO(i) = nanmean(Pt45_Ckov_Attenuated_10_RPO(:));
    Pt45_Ckov_Attenuated_Mean_10_LAO(i) = nanmean(Pt45_Ckov_Attenuated_10_LAO(:));
    
    clear Pt45_HU_Attenuated_6 Pt45_Ckov_Attenuated_6 Pt45_HU_Attenuated_10 Pt45_Ckov_Attenuated_10
    clear Pt45_Ckov_Unattenuated_6 Pt45_HU_Unattenuated_6 Pt45_Ckov_Unattenuated_10 Pt45_HU_Unattenuated_10
end

figure(100)
scatter(Pt45_HU_Unattenuated_Mean_RPO(:), Pt45_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt45_HU_Unattenuated_Mean_LAO(:), Pt45_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_Attenuated_Mean_RPO(:), Pt45_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_Attenuated_Mean_LAO(:), Pt45_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;


figure(101)
scatter(Pt45_HU_Unattenuated_Mean_RPO(:), Pt45_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt45_HU_Unattenuated_Mean_LAO(:), Pt45_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_Attenuated_Mean_RPO(:), Pt45_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_Attenuated_Mean_LAO(:), Pt45_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;

%% PT59
figure(100)
clf
clear Pt59_HU_Unattenuated_Mean_RPO Pt59_HU_Attenuated_Mean_LAO
clear Pt59_Ckov_Attenuated_Mean_6_RPO Pt59_Ckov_Unattenuated_Mean_6_RPO Pt59_Ckov_Attenuated_Mean_6_LAO Pt59_Ckov_Unattenuated_Mean_6_LAO
clear Pt59_Ckov_Attenuated_Mean_10_RPO Pt59_Ckov_Unattenuated_Mean_10_RPO Pt59_Ckov_Attenuated_Mean_10_LAO Pt59_Ckov_Unattenuated_Mean_10_LAO
for i = 1:10
    m_roi = Pt59_DN_ROIs_HHU_Unattenuated(:,:,i);
    %HU
    Pt59_HU_Unattenuated_RPO = Pt59_CT_HU_Map_RPO.*m_roi; 
    Pt59_HU_Unattenuated_RPO(Pt59_HU_Unattenuated_RPO==0)=nan;
    Pt59_HU_Unattenuated_LAO = Pt59_CT_HU_Map_LAO.*m_roi; 
    Pt59_HU_Unattenuated_LAO(Pt59_HU_Unattenuated_LAO==0)=nan;
    
    %6X
    Pt59_Ckov_Unattenuated_6_RPO = Pt59_RPO_CkovDoseNorm_6.*m_roi;
    Pt59_Ckov_Unattenuated_6_RPO(Pt59_Ckov_Unattenuated_6_RPO==0)=nan;
    Pt59_Ckov_Unattenuated_6_LAO = Pt59_LAO_CkovDoseNorm_6.*m_roi;
    Pt59_Ckov_Unattenuated_6_LAO(Pt59_Ckov_Unattenuated_6_LAO==0)=nan;
    
    %10X
    Pt59_Ckov_Unattenuated_10_RPO = Pt59_RPO_CkovDoseNorm_10.*m_roi;
    Pt59_Ckov_Unattenuated_10_RPO(Pt59_Ckov_Unattenuated_10_RPO==0)=nan;
    Pt59_Ckov_Unattenuated_10_LAO = Pt59_LAO_CkovDoseNorm_10.*m_roi;
    Pt59_Ckov_Unattenuated_10_LAO(Pt59_Ckov_Unattenuated_10_LAO==0)=nan;
    
    Pt59_HU_Unattenuated_Mean_RPO(i) = nanmean(Pt59_HU_Unattenuated_RPO(:));
    Pt59_HU_Unattenuated_Mean_LAO(i) = nanmean(Pt59_HU_Unattenuated_LAO(:));

    Pt59_Ckov_Unattenuated_Mean_6_RPO(i) = nanmean(Pt59_Ckov_Unattenuated_6_RPO(:));
    Pt59_Ckov_Unattenuated_Mean_6_LAO(i) = nanmean(Pt59_Ckov_Unattenuated_6_LAO(:));
    Pt59_Ckov_Unattenuated_Mean_10_RPO(i) = nanmean(Pt59_Ckov_Unattenuated_10_RPO(:));
    Pt59_Ckov_Unattenuated_Mean_10_LAO(i) = nanmean(Pt59_Ckov_Unattenuated_10_LAO(:));
    
    %ATTENUATED
    m_roi = Pt59_DN_ROIs_HHU_Attenuated(:,:,i);
    %HU
    Pt59_HU_Attenuated_RPO = Pt59_CT_HU_Map_RPO.*m_roi; 
    Pt59_HU_Attenuated_RPO(Pt59_HU_Attenuated_RPO==0)=nan;
    Pt59_HU_Attenuated_LAO = Pt59_CT_HU_Map_LAO.*m_roi; 
    Pt59_HU_Attenuated_LAO(Pt59_HU_Attenuated_LAO==0)=nan;
    
    %6X
    Pt59_Ckov_Attenuated_6_RPO = Pt59_RPO_CkovDoseNorm_6.*m_roi;
    Pt59_Ckov_Attenuated_6_RPO(Pt59_Ckov_Attenuated_6_RPO==0)=nan;
    Pt59_Ckov_Attenuated_6_LAO = Pt59_LAO_CkovDoseNorm_6.*m_roi;
    Pt59_Ckov_Attenuated_6_LAO(Pt59_Ckov_Attenuated_6_LAO==0)=nan;
    
    %10X
    Pt59_Ckov_Attenuated_10_RPO = Pt59_RPO_CkovDoseNorm_10.*m_roi;
    Pt59_Ckov_Attenuated_10_RPO(Pt59_Ckov_Attenuated_10_RPO==0)=nan;
    Pt59_Ckov_Attenuated_10_LAO = Pt59_LAO_CkovDoseNorm_10.*m_roi;
    Pt59_Ckov_Attenuated_10_LAO(Pt59_Ckov_Attenuated_10_LAO==0)=nan;
    
    Pt59_HU_Attenuated_Mean_RPO(i) = nanmean(Pt59_HU_Attenuated_RPO(:));
    Pt59_HU_Attenuated_Mean_LAO(i) = nanmean(Pt59_HU_Attenuated_LAO(:));

    Pt59_Ckov_Attenuated_Mean_6_RPO(i) = nanmean(Pt59_Ckov_Attenuated_6_RPO(:));
    Pt59_Ckov_Attenuated_Mean_6_LAO(i) = nanmean(Pt59_Ckov_Attenuated_6_LAO(:));
    Pt59_Ckov_Attenuated_Mean_10_RPO(i) = nanmean(Pt59_Ckov_Attenuated_10_RPO(:));
    Pt59_Ckov_Attenuated_Mean_10_LAO(i) = nanmean(Pt59_Ckov_Attenuated_10_LAO(:));
    
    clear Pt59_HU_Attenuated_6 Pt59_Ckov_Attenuated_6 Pt59_HU_Attenuated_10 Pt59_Ckov_Attenuated_10
    clear Pt59_Ckov_Unattenuated_6 Pt59_HU_Unattenuated_6 Pt59_Ckov_Unattenuated_10 Pt59_HU_Unattenuated_10
end

figure(100)
scatter(Pt59_HU_Unattenuated_Mean_RPO(:), Pt59_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt59_HU_Unattenuated_Mean_LAO(:), Pt59_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_Attenuated_Mean_RPO(:), Pt59_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_Attenuated_Mean_LAO(:), Pt59_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;


figure(101)
scatter(Pt59_HU_Unattenuated_Mean_RPO(:), Pt59_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt59_HU_Unattenuated_Mean_LAO(:), Pt59_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_Attenuated_Mean_RPO(:), Pt59_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_Attenuated_Mean_LAO(:), Pt59_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-200 150]), 
ylim([0 4e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (cpGy)')
axy.FontSize = 18;


%% PLOT ALL. 
% THIS IS FOR 6X
figure(100)
clf;
scatter(Pt30_HU_Unattenuated_Mean_RPO(:), Pt30_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt30_HU_Unattenuated_Mean_LAO(:), Pt30_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt30_HU_Attenuated_Mean_RPO(:), Pt30_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt30_HU_Attenuated_Mean_LAO(:), Pt30_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt31_HU_Unattenuated_Mean_RPO(:), Pt31_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt31_HU_Unattenuated_Mean_LAO(:), Pt31_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt31_HU_Attenuated_Mean_RPO(:), Pt31_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt31_HU_Attenuated_Mean_LAO(:), Pt31_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_Unattenuated_Mean_RPO(:), Pt32_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_Unattenuated_Mean_LAO(:), Pt32_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_Attenuated_Mean_RPO(:), Pt32_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_Attenuated_Mean_LAO(:), Pt32_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt35_HU_Unattenuated_Mean_RPO(:), Pt35_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt35_HU_Unattenuated_Mean_LAO(:), Pt35_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt35_HU_Attenuated_Mean_RPO(:), Pt35_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt35_HU_Attenuated_Mean_LAO(:), Pt35_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt36_HU_Unattenuated_Mean_RPO(:), Pt36_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt36_HU_Unattenuated_Mean_LAO(:), Pt36_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt36_HU_Attenuated_Mean_RPO(:), Pt36_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt36_HU_Attenuated_Mean_LAO(:), Pt36_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt37_HU_Unattenuated_Mean_RPO(:), Pt37_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt37_HU_Unattenuated_Mean_LAO(:), Pt37_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt37_HU_Attenuated_Mean_RPO(:), Pt37_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt37_HU_Attenuated_Mean_LAO(:), Pt37_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_Unattenuated_Mean_RPO(:), Pt39_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_Unattenuated_Mean_LAO(:), Pt39_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_Attenuated_Mean_RPO(:), Pt39_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_Attenuated_Mean_LAO(:), Pt39_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_Unattenuated_Mean_RPO(:), Pt41_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_Unattenuated_Mean_LAO(:), Pt41_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_Attenuated_Mean_RPO(:), Pt41_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_Attenuated_Mean_LAO(:), Pt41_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt44_HU_Unattenuated_Mean_RPO(:), Pt44_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt44_HU_Unattenuated_Mean_LAO(:), Pt44_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt44_HU_Attenuated_Mean_RPO(:), Pt44_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt44_HU_Attenuated_Mean_LAO(:), Pt44_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_Unattenuated_Mean_RPO(:), Pt45_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_Unattenuated_Mean_LAO(:), Pt45_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_Attenuated_Mean_RPO(:), Pt45_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_Attenuated_Mean_LAO(:), Pt45_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt56_HU_Unattenuated_Mean_RPO(:), Pt56_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt56_HU_Unattenuated_Mean_LAO(:), Pt56_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt56_HU_Attenuated_Mean_RPO(:), Pt56_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt56_HU_Attenuated_Mean_LAO(:), Pt56_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt58_HU_Unattenuated_Mean_RPO(:), Pt58_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt58_HU_Unattenuated_Mean_LAO(:), Pt58_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt58_HU_Attenuated_Mean_RPO(:), Pt58_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt58_HU_Attenuated_Mean_LAO(:), Pt58_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_Unattenuated_Mean_RPO(:), Pt59_Ckov_Unattenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_Unattenuated_Mean_LAO(:), Pt59_Ckov_Unattenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_Attenuated_Mean_RPO(:), Pt59_Ckov_Attenuated_Mean_6_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_Attenuated_Mean_LAO(:), Pt59_Ckov_Attenuated_Mean_6_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-150 75]), 
ylim([0 6e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (\gamma/Gy)')
axy.FontSize = 18;
ct_xspace = [-150:0.01:75];
ct_yspace_6X = fit_6_2EXP.a*exp(fit_6_2EXP.b.*(ct_xspace)) +...
    fit_6_2EXP.c*exp(fit_6_2EXP.d.*(ct_xspace));
plot(ct_xspace, ct_yspace_6X, 'Color', 'b', 'LineWidth', 2, 'LineStyle', ':')

% THIS IS FOR 10X
figure(101)
clf;
scatter(Pt32_HU_Unattenuated_Mean_RPO(:), Pt32_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
hold on
scatter(Pt32_HU_Unattenuated_Mean_LAO(:), Pt32_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_Attenuated_Mean_RPO(:), Pt32_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt32_HU_Attenuated_Mean_LAO(:), Pt32_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_Unattenuated_Mean_RPO(:), Pt39_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_Unattenuated_Mean_LAO(:), Pt39_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_Attenuated_Mean_RPO(:), Pt39_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt39_HU_Attenuated_Mean_LAO(:), Pt39_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_Unattenuated_Mean_RPO(:), Pt41_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_Unattenuated_Mean_LAO(:), Pt41_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_Attenuated_Mean_RPO(:), Pt41_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt41_HU_Attenuated_Mean_LAO(:), Pt41_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_Unattenuated_Mean_RPO(:), Pt45_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_Unattenuated_Mean_LAO(:), Pt45_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_Attenuated_Mean_RPO(:), Pt45_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt45_HU_Attenuated_Mean_LAO(:), Pt45_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_Unattenuated_Mean_RPO(:), Pt59_Ckov_Unattenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_Unattenuated_Mean_LAO(:), Pt59_Ckov_Unattenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', [0.5 0.5 0.5], 'MarkerFaceColor', [0.5, 0.5, 0.5], 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_Attenuated_Mean_RPO(:), Pt59_Ckov_Attenuated_Mean_10_RPO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
scatter(Pt59_HU_Attenuated_Mean_LAO(:), Pt59_Ckov_Attenuated_Mean_10_LAO(:), 'o', 'filled',...
    'MarkerEdgeAlpha', 1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerFaceAlpha', 0.5)
xlim([-150 75]), 
ylim([0 6e4])
axy = gca;
xlabel('Surface Sampled Radiodensity (HU)')
ylabel('Cherenkov / Dose (\gamma/Gy)')
axy.FontSize = 18;
ct_yspace_10X = fit_10_2EXP.a*exp(fit_10_2EXP.b.*(ct_xspace)) +...
    fit_10_2EXP.c*exp(fit_10_2EXP.d.*(ct_xspace));
plot(ct_xspace, ct_yspace_10X, 'Color', 'b', 'LineWidth', 2, 'LineStyle', ':')



All_Pt_HU_6 = [Pt30_HU_Unattenuated_Mean_RPO(:); Pt30_HU_Unattenuated_Mean_LAO(:);...
    Pt31_HU_Unattenuated_Mean_RPO(:); Pt31_HU_Unattenuated_Mean_LAO(:);...
    Pt32_HU_Unattenuated_Mean_RPO(:); Pt32_HU_Unattenuated_Mean_LAO(:);...
    Pt35_HU_Unattenuated_Mean_RPO(:); Pt35_HU_Unattenuated_Mean_LAO(:);...
    Pt36_HU_Unattenuated_Mean_RPO(:); Pt36_HU_Unattenuated_Mean_LAO(:);...
    Pt37_HU_Unattenuated_Mean_RPO(:); Pt37_HU_Unattenuated_Mean_LAO(:);...
    Pt39_HU_Unattenuated_Mean_RPO(:); Pt39_HU_Unattenuated_Mean_LAO(:);...
    Pt41_HU_Unattenuated_Mean_RPO(:); Pt41_HU_Unattenuated_Mean_LAO(:);...
    Pt44_HU_Unattenuated_Mean_RPO(:); Pt44_HU_Unattenuated_Mean_LAO(:);...
    Pt45_HU_Unattenuated_Mean_RPO(:); Pt45_HU_Unattenuated_Mean_LAO(:);...
    Pt56_HU_Unattenuated_Mean_RPO(:); Pt56_HU_Unattenuated_Mean_LAO(:);...
    Pt58_HU_Unattenuated_Mean_RPO(:); Pt58_HU_Unattenuated_Mean_LAO(:);...
    Pt59_HU_Unattenuated_Mean_RPO(:); Pt59_HU_Unattenuated_Mean_LAO(:);...
    Pt30_HU_Attenuated_Mean_RPO(:); Pt30_HU_Attenuated_Mean_LAO(:);...
    Pt31_HU_Attenuated_Mean_RPO(:); Pt31_HU_Attenuated_Mean_LAO(:);...
    Pt32_HU_Attenuated_Mean_RPO(:); Pt32_HU_Attenuated_Mean_LAO(:);...
    Pt35_HU_Attenuated_Mean_RPO(:); Pt35_HU_Attenuated_Mean_LAO(:);...
    Pt36_HU_Attenuated_Mean_RPO(:); Pt36_HU_Attenuated_Mean_LAO(:);...
    Pt37_HU_Attenuated_Mean_RPO(:); Pt37_HU_Attenuated_Mean_LAO(:);...
    Pt39_HU_Attenuated_Mean_RPO(:); Pt39_HU_Attenuated_Mean_LAO(:);...
    Pt41_HU_Attenuated_Mean_RPO(:); Pt41_HU_Attenuated_Mean_LAO(:);...
    Pt44_HU_Attenuated_Mean_RPO(:); Pt44_HU_Attenuated_Mean_LAO(:);...
    Pt45_HU_Attenuated_Mean_RPO(:); Pt45_HU_Attenuated_Mean_LAO(:);...
    Pt56_HU_Attenuated_Mean_RPO(:); Pt56_HU_Attenuated_Mean_LAO(:);...
    Pt58_HU_Attenuated_Mean_RPO(:); Pt58_HU_Attenuated_Mean_LAO(:);...
    Pt59_HU_Attenuated_Mean_RPO(:); Pt59_HU_Attenuated_Mean_LAO(:)];

All_Pt_Ckov_6 = [Pt30_Ckov_Unattenuated_Mean_6_RPO(:); Pt30_Ckov_Unattenuated_Mean_6_LAO(:);...
    Pt31_Ckov_Unattenuated_Mean_6_RPO(:); Pt31_Ckov_Unattenuated_Mean_6_LAO(:);...
    Pt32_Ckov_Unattenuated_Mean_6_RPO(:); Pt32_Ckov_Unattenuated_Mean_6_LAO(:);...
    Pt35_Ckov_Unattenuated_Mean_6_RPO(:); Pt35_Ckov_Unattenuated_Mean_6_LAO(:);...
    Pt36_Ckov_Unattenuated_Mean_6_RPO(:); Pt36_Ckov_Unattenuated_Mean_6_LAO(:);...
    Pt37_Ckov_Unattenuated_Mean_6_RPO(:); Pt37_Ckov_Unattenuated_Mean_6_LAO(:);...
    Pt39_Ckov_Unattenuated_Mean_6_RPO(:); Pt39_Ckov_Unattenuated_Mean_6_LAO(:);...
    Pt41_Ckov_Unattenuated_Mean_6_RPO(:); Pt41_Ckov_Unattenuated_Mean_6_LAO(:);...
    Pt44_Ckov_Unattenuated_Mean_6_RPO(:); Pt44_Ckov_Unattenuated_Mean_6_LAO(:);...
    Pt45_Ckov_Unattenuated_Mean_6_RPO(:); Pt45_Ckov_Unattenuated_Mean_6_LAO(:);...
    Pt56_Ckov_Unattenuated_Mean_6_RPO(:); Pt56_Ckov_Unattenuated_Mean_6_LAO(:);...
    Pt58_Ckov_Unattenuated_Mean_6_RPO(:); Pt58_Ckov_Unattenuated_Mean_6_LAO(:);...
    Pt59_Ckov_Unattenuated_Mean_6_RPO(:); Pt59_Ckov_Unattenuated_Mean_6_LAO(:);...
    Pt30_Ckov_Attenuated_Mean_6_RPO(:); Pt30_Ckov_Attenuated_Mean_6_LAO(:);...
    Pt31_Ckov_Attenuated_Mean_6_RPO(:); Pt31_Ckov_Attenuated_Mean_6_LAO(:);...
    Pt32_Ckov_Attenuated_Mean_6_RPO(:); Pt32_Ckov_Attenuated_Mean_6_LAO(:);...
    Pt35_Ckov_Attenuated_Mean_6_RPO(:); Pt35_Ckov_Attenuated_Mean_6_LAO(:);...
    Pt36_Ckov_Attenuated_Mean_6_RPO(:); Pt36_Ckov_Attenuated_Mean_6_LAO(:);...
    Pt37_Ckov_Attenuated_Mean_6_RPO(:); Pt37_Ckov_Attenuated_Mean_6_LAO(:);...
    Pt39_Ckov_Attenuated_Mean_6_RPO(:); Pt39_Ckov_Attenuated_Mean_6_LAO(:);...
    Pt41_Ckov_Attenuated_Mean_6_RPO(:); Pt41_Ckov_Attenuated_Mean_6_LAO(:);...
    Pt44_Ckov_Attenuated_Mean_6_RPO(:); Pt44_Ckov_Attenuated_Mean_6_LAO(:);...
    Pt45_Ckov_Attenuated_Mean_6_RPO(:); Pt45_Ckov_Attenuated_Mean_6_LAO(:);...
    Pt56_Ckov_Attenuated_Mean_6_RPO(:); Pt56_Ckov_Attenuated_Mean_6_LAO(:);...
    Pt58_Ckov_Attenuated_Mean_6_RPO(:); Pt58_Ckov_Attenuated_Mean_6_LAO(:);...
    Pt59_Ckov_Attenuated_Mean_6_RPO(:); Pt59_Ckov_Attenuated_Mean_6_LAO(:)];

All_Pt_HU_10 = [Pt32_HU_Unattenuated_Mean_RPO(:); Pt32_HU_Unattenuated_Mean_LAO(:);...
    Pt39_HU_Unattenuated_Mean_RPO(:); Pt39_HU_Unattenuated_Mean_LAO(:);...
    Pt41_HU_Unattenuated_Mean_RPO(:); Pt41_HU_Unattenuated_Mean_LAO(:);...
    Pt45_HU_Unattenuated_Mean_RPO(:); Pt45_HU_Unattenuated_Mean_LAO(:);...
    Pt59_HU_Unattenuated_Mean_RPO(:); Pt59_HU_Unattenuated_Mean_LAO(:);...
    Pt32_HU_Attenuated_Mean_RPO(:); Pt32_HU_Attenuated_Mean_LAO(:);...
    Pt39_HU_Attenuated_Mean_RPO(:); Pt39_HU_Attenuated_Mean_LAO(:);...
    Pt41_HU_Attenuated_Mean_RPO(:); Pt41_HU_Attenuated_Mean_LAO(:);...
    Pt45_HU_Attenuated_Mean_RPO(:); Pt45_HU_Attenuated_Mean_LAO(:);...
    Pt59_HU_Attenuated_Mean_RPO(:); Pt59_HU_Attenuated_Mean_LAO(:)];


All_Pt_Ckov_10 =[Pt32_Ckov_Unattenuated_Mean_10_RPO(:); Pt32_Ckov_Unattenuated_Mean_10_LAO(:);...
    Pt39_Ckov_Unattenuated_Mean_10_RPO(:); Pt39_Ckov_Unattenuated_Mean_10_LAO(:);...
    Pt41_Ckov_Unattenuated_Mean_10_RPO(:); Pt41_Ckov_Unattenuated_Mean_10_LAO(:);...
    Pt45_Ckov_Unattenuated_Mean_10_RPO(:); Pt45_Ckov_Unattenuated_Mean_10_LAO(:);...
    Pt59_Ckov_Unattenuated_Mean_10_RPO(:); Pt59_Ckov_Unattenuated_Mean_10_LAO(:);...  
    Pt32_Ckov_Attenuated_Mean_10_RPO(:); Pt32_Ckov_Attenuated_Mean_10_LAO(:);...
    Pt39_Ckov_Attenuated_Mean_10_RPO(:); Pt39_Ckov_Attenuated_Mean_10_LAO(:);...
    Pt41_Ckov_Attenuated_Mean_10_RPO(:); Pt41_Ckov_Attenuated_Mean_10_LAO(:);...
    Pt45_Ckov_Attenuated_Mean_10_RPO(:); Pt45_Ckov_Attenuated_Mean_10_LAO(:);...
    Pt59_Ckov_Attenuated_Mean_10_RPO(:); Pt59_Ckov_Attenuated_Mean_10_LAO(:)];

 
% %% This for 6X
Pt30_HU_data_6 = [Pt30_HU_Unattenuated_Mean(:); Pt30_HU_Attenuated_Mean(:)];
Pt30_Ckov_data_6 = [Pt30_Ckov_Unattenuated_6_Mean(:); Pt30_Ckov_Attenuated_6_Mean(:)];
Pt31_HU_data_6 = [Pt31_HU_Unattenuated_Mean(:); Pt31_HU_Attenuated_Mean(:)];
Pt31_Ckov_data_6 = [Pt31_Ckov_Unattenuated_6_Mean(:); Pt31_Ckov_Attenuated_6_Mean(:)];
Pt32_HU_data_6 = [Pt32_HU_Unattenuated_Mean(:); Pt32_HU_Attenuated_Mean(:)];
Pt32_Ckov_data_6 = [Pt32_Ckov_Unattenuated_6_Mean(:); Pt32_Ckov_Attenuated_6_Mean(:)];
Pt35_HU_data_6 = [Pt35_HU_Unattenuated_Mean(:); Pt35_HU_Attenuated_Mean(:)];
Pt35_Ckov_data_6 = [Pt35_Ckov_Unattenuated_6_Mean(:); Pt35_Ckov_Attenuated_6_Mean(:)];
Pt36_HU_data_6 = [Pt36_HU_Unattenuated_Mean(:); Pt36_HU_Attenuated_Mean(:)];
Pt36_Ckov_data_6 = [Pt36_Ckov_Unattenuated_6_Mean(:); Pt36_Ckov_Attenuated_6_Mean(:)];
Pt37_HU_data_6 = [Pt37_HU_Unattenuated_Mean(:); Pt37_HU_Attenuated_Mean(:)];
Pt37_Ckov_data_6 = [Pt37_Ckov_Unattenuated_6_Mean(:); Pt37_Ckov_Attenuated_6_Mean(:)];
Pt39_HU_data_6 = [Pt39_HU_Unattenuated_Mean(:); Pt39_HU_Attenuated_Mean(:)];
Pt39_Ckov_data_6 = [Pt39_Ckov_Unattenuated_6_Mean(:); Pt39_Ckov_Attenuated_6_Mean(:)];
Pt41_HU_data_6 = [Pt41_HU_Unattenuated_Mean(:); Pt41_HU_Attenuated_Mean(:)];
Pt41_Ckov_data_6 = [Pt41_Ckov_Unattenuated_6_Mean(:); Pt41_Ckov_Attenuated_6_Mean(:)];
Pt44_HU_data_6 = [Pt44_HU_Unattenuated_Mean(:); Pt44_HU_Attenuated_Mean(:)];
Pt44_Ckov_data_6 = [Pt44_Ckov_Unattenuated_6_Mean(:); Pt44_Ckov_Attenuated_6_Mean(:)];
Pt45_HU_data_6 = [Pt45_HU_Unattenuated_Mean(:); Pt45_HU_Attenuated_Mean(:)];
Pt45_Ckov_data_6 = [Pt45_Ckov_Unattenuated_6_Mean(:); Pt45_Ckov_Attenuated_6_Mean(:)];
Pt56_HU_data_6 = [Pt56_HU_Unattenuated_Mean(:); Pt56_HU_Attenuated_Mean(:)];
Pt56_Ckov_data_6 = [Pt56_Ckov_Unattenuated_6_Mean(:); Pt56_Ckov_Attenuated_6_Mean(:)];
Pt58_HU_data_6 = [Pt58_HU_Unattenuated_Mean(:); Pt58_HU_Attenuated_Mean(:)];
Pt58_Ckov_data_6 = [Pt58_Ckov_Unattenuated_6_Mean(:); Pt58_Ckov_Attenuated_6_Mean(:)];
Pt59_HU_data_6 = [Pt59_HU_Unattenuated_Mean(:); Pt59_HU_Attenuated_Mean(:)];
Pt59_Ckov_data_6 = [Pt59_Ckov_Unattenuated_6_Mean(:); Pt59_Ckov_Attenuated_6_Mean(:)];

[fit30_6 gof30_6] = fit(Pt30_HU_data_6, Pt30_Ckov_data_6, 'poly1')
[fit31_6 gof31_6] = fit(Pt31_HU_data_6, Pt31_Ckov_data_6, 'poly1')
[fit32_6 gof32_6] = fit(Pt32_HU_data_6, Pt32_Ckov_data_6, 'poly1')
[fit35_6 gof35_6] = fit(Pt35_HU_data_6, Pt35_Ckov_data_6, 'poly1')
[fit36_6 gof36_6] = fit(Pt36_HU_data_6, Pt36_Ckov_data_6, 'poly1')
[fit37_6 gof37_6] = fit(Pt37_HU_data_6, Pt37_Ckov_data_6, 'poly1')
[fit39_6 gof39_6] = fit(Pt39_HU_data_6, Pt39_Ckov_data_6, 'poly1')
[fit41_6 gof41_6] = fit(Pt41_HU_data_6, Pt41_Ckov_data_6, 'poly1')
[fit44_6 gof44_6] = fit(Pt44_HU_data_6, Pt44_Ckov_data_6, 'poly1')
[fit45_6 gof45_6] = fit(Pt45_HU_data_6, Pt45_Ckov_data_6, 'poly1')
[fit56_6 gof56_6] = fit(Pt56_HU_data_6, Pt56_Ckov_data_6, 'poly1')
[fit58_6 gof58_6] = fit(Pt58_HU_data_6, Pt58_Ckov_data_6, 'poly1')
[fit59_6 gof59_6] = fit(Pt59_HU_data_6, Pt59_Ckov_data_6, 'poly1')

