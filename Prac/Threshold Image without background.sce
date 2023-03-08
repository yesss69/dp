a = imread(fullpath(getIPCVpath()+"/images/"+'baboon.png'));

[m,n] = size(a);
//t = input('Enter The Threshold Parameter');
for i = 1:m
    for j = 1:n
        if (a(i,j)<100)
            b(i,j)=0;
        elseif (a (i,j)> 200)
            b(i,j)=0;
        else
            b(i,j)= 255;
        end
    end
end
// Output Section
figure(1)
imshow(a);
title('Original Image');

figure(2)
imshow(b);
title('Gray Level Slicing without preserving background');
