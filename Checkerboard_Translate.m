% Directory 
% FIRST LEFT VIEW
cd('C:\Users\hacha\Downloads\2020-10-28 17-49-55-879-20201028T224645Z-001\2020-10-28 17-49-55-879')
% location_file = 'edge_location.txt'; % needed to use when algorithm could
% not detect.
im_checker = read_dovi('meas_s0_cam0.dovi');
im_check = sum(im_checker,3);
im_ch = uint8(double(im_checker)/2500 * 256);
imagesc(im_check)
h=imfreehand(); % often you'll need to mask out everything but the checkerboard by simply drawing a circle around it. 
mask = createMask(h);
close
im_check2 = medfilt2(im_check.*mask, [5 5]);
[imagePoints,boardSize] = detectCheckerboardPoints(im_check2);
%[xpts ypts] = getpts();
xpts = imagePoints(:,1); ypts = imagePoints(:,2);
x_vect = (69/30).*[6 3 0 -3 -6]*100; %each box is 3 cm by 3 cm, 7 boxes vertically 6 boxes horizontally. 
y_vect = (69/30).*[-7.5 -4.5 -1.5 1.5 4.5 7.5]*100;
[x_mat, y_mat] = meshgrid(x_vect, y_vect);
x_mat_t = x_mat';
y_mat_t = y_mat';
loc_real = [x_mat_t(:), y_mat_t(:)];
tform_TRIL_L = fitgeotrans([xpts ypts], loc_real, 'projective');
figure(3)
imagesc(im_check2);
hold on;
line(xpts, ypts);
hold off;
figure(2)
tform_TRIL_L.T(3,3) = 10;
It = imwarp(im_check2, tform_TRIL_L);
imagesc(It)
%save('tform_trilogy_LEFT.mat', 'tform_TRIL_L'); %can choose to save
%automatically. 
px_sp_L = 473/18; %px/cm    %in the trilogy room with this camera setup, there were 473 pixels per cm. 


% test transforming cherenkov images
figure(33)
imagesc(Pt67_LC_CKOV_STITCHED); axis image; colormap(cmap1); caxis([0 800]); axis off; 
Pt67_LC_CKOV_EnFace = imrotate(imwarp(Pt67_LC_CKOV_STITCHED, tform_TRIL_L), 14);
figure(34);
imagesc(Pt67_LC_CKOV_EnFace); axis image; colormap(cmap1); caxis([0 800]); axis off; 

%apply a mask the compute the FWHM
h = imrect();
m = createMask(h);
close; 
Pt67_LC_CKOV_EnFace_SUM = sum(Pt67_LC_CKOV_EnFace.*m, 1);
figure(25)
plot((1:1:length(Pt67_LC_CKOV_EnFace_SUM))./px_sp_L, Pt67_LC_CKOV_EnFace_SUM, 'LineWidth', 2)
ax = gca;
ax.FontSize=16; 
xlabel('Separation (cm)')
ylabel('Relative Intensity (a.u.)')
x = (1:1:length(Pt67_LC_CKOV_EnFace_SUM))./px_sp_L;
y =  Pt67_LC_CKOV_EnFace_SUM;
y(y==0)= max(y(:));
figure(80); plot(x,y);
fwhm(x,y)


% Directory 
% RIGHT VIEW
cd('C:\Users\hacha\Downloads\2020-10-28 17-49-55-879-20201028T224645Z-001\2020-10-28 17-49-55-879')
% location_file = 'edge_location.txt';
im_checker = read_dovi('meas_s0_cam1.dovi');
im_check = sum(im_checker,3);
im_ch = uint8(double(im_checker)/2500 * 256);
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
tform_TRIL_R = fitgeotrans([xpts ypts], loc_real, 'projective');
figure(3)
imagesc(im_check2);
hold on;
line(xpts, ypts);
hold off;
figure(2)
tform_TRIL_R.T(3,3) = 10;
It = imwarp(im_check2, tform_TRIL_R);
imagesc(It)
save('tform_trilogy_RIGHT.mat', 'tform_TRIL_R');
px_sp_R = (1594-1131)/18; %px/cm


% test transforming stitched images
figure(33)
imagesc(Pt67_RC_CKOV_STITCHED); axis image; colormap(cmap1); caxis([0 800]); axis off; 
Pt67_RC_CKOV_EnFace = imrotate(imwarp(Pt67_RC_CKOV_STITCHED, tform_TRIL_R), -25);
figure(34);
imagesc(Pt67_RC_CKOV_EnFace); axis image; colormap(cmap1); caxis([0 800]); axis off; 

%apply a mask the compute the FWHM
h = imrect();
m = createMask(h);
close; 
Pt67_RC_CKOV_EnFace_SUM = sum(Pt67_RC_CKOV_EnFace.*m, 1);
figure(25)
plot((1:1:length(Pt67_RC_CKOV_EnFace_SUM))./px_sp_R, Pt67_RC_CKOV_EnFace_SUM, 'LineWidth', 2)
ax = gca;
ax.FontSize=16; 
xlabel('Separation (cm)')
ylabel('Relative Intensity (a.u.)')
x = (1:1:length(Pt67_RC_CKOV_EnFace_SUM))./px_sp_L;
y =  Pt67_RC_CKOV_EnFace_SUM;
y(y==0)= max(y(:));
figure(80); plot(x,y);
fwhm(x,y)