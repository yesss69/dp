clc;
close;
function histplot(a)
a = double(a);
big= max(max(a));
[row col]= size(a);
c = row*col;
h= zeros(1,300);
z = zeros(1,300);
for n = 1:1:row
    for m =1:1:col
     if a(n,m)==0 then
        a(n,m)=1;
    end
    end
end
for n = 1:1:row
    for m = 1:1:col
        t = a(n,m);
        h(t)=h(t)+1;
    end
end

figure(2);
bar(h);
title('Histogram of the Original Image');
endfunction
a = imread(fullpath(getIPCVpath() + "/images/Lena_dark.png"));

figure(1);
imshow(a);
title('Original Image');
histplot(a);
J = imhistequal(a);

figure(3);
imshow(J);
title('Equalized Image');

figure(4);
histplot(J);
title('Histogram of the Equalized Image');
