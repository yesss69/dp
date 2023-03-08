clc;
close;
im = imread(fullpath(getIPCVpath() + "/images/baboon.png"));
Red = im(: , : ,1);
Green = im(: ,: ,2);
Blue = im(: , : , 3);
// Get Histplot Value For Each Channel
[yRed, x] = imhist(Red);
[yGreen, x] = imhist(Green);
[yBlue, x] = imhist(Blue);
// plot them together in one plot
plot(x, yRed, 'Red' , x , yGreen,  'Green', x, yBlue, 'Blue' );
figure (1);
imshow(im);
title('Original Image');
figure(2);
bar(x, yRed, 'red');
title('Red Component');
figure(3);
bar(x, yGreen, 'green');
title('Green Component');
figure(4);
bar(x, yBlue, 'blue');
title('Blue Component');
