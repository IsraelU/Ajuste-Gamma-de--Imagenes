clear all
close all
clc

img = imread("rx_2.jpg");                  %Lectura de imagen por medio de variable llamada img



%% AJUSTE GAMMA

img = double(img);                              %Conversion de imagen a formato double    
gamma = 1.3;                                    %Factor gamma almacenado en la variable llamada gamma para el ajuste

%Función de ajuste gamma (FÓRMULA)
img_gamma = 255 .*((img./255) .^(1/gamma)); 


%% Reconversión de formato (Double a uint8)
img = uint8(img);                               %Conversion de img a entero de 8 bit
img_gamma = uint8(img_gamma);                   %Conversion de img_gamma a entero de 8 bit

figure(1)                                       %Visualizar imagen por medio de figure
imshow([img; img_gamma])                        %Muestra las imagenes en la figure declarada


%% Negativo de imagen (OPCIONAL PARA rx)
% img_neg = 255 - img_gamma;                    %255 - ValorImagen
% 
% figure(2)
% imshow(img_neg)

