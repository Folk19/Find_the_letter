clc; clear all; close all;
tic;n=0;
scene = im2double(rgb2gray(imread('./Scene.bmp')));
letter_e = im2double(rgb2gray(imread('./letter_e.bmp')));
new = zeros(1024,1024);
for i = 1 : 964
    for j = 1 : 972
        new(i,j) = sum (sum (scene(i:i+60,j:j+52).*letter_e));
    end
end
toc, n;