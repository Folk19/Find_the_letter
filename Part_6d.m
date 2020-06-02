clc; clear all; close all;
tic;
scene = im2double(rgb2gray(imread('./Scene.bmp')));
letter_e =im2double(rgb2gray(imread('./letter_e.bmp')));
imshow(scene);
new = ifft2(fft2(scene,964,972).*conj(fft2(letter_e,964,972)));
hold on
for i = 1 : 964
    for j = 1 : 972
         if (new(i,j) > 1000)
             rectangle('Position', [j,i,53,61],'EdgeColor','r','LineWidth',2 )
         end
    end
end
hold off
toc;