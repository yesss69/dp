clc;
close;
a = imread(fullpath(getIPCVpath()+"/images/baboon.png"));
a = double(a);
big = max(max(a));
[row col]=size(a);
c = row * col;
h = zeros(1,300);
z = zeros(1,300);
for n = 1:1:row
 for m = 1:1:col
 if a(n,m) == 0 then
 a(n,m) = 1;
 end
 end
end
for n = 1:1:row
 for m = 1:1:col
 t = a(n,m)
 h(t) = h(t) + 1;
 end
end
figure(1);
title("Original Image")
imshow(uint8(a));
figure(2);
title("Histogram of RGB image");
bar(h);
