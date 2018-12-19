%I = imread('text.png');
I = imread('https://monicastettler.files.wordpress.com/2018/10/reddressbeighjacket.jpg');
%I = imread('text.png');
%I = imread('https://monicastettler.files.wordpress.com/2018/10/reddressbeighjacket.jpg');
%I = imread('https://monicastettler.files.wordpress.com/2018/10/pinkdressgrayjacket.jpg');
%I = imread('https://monicastettler.files.wordpress.com/2018/10/blackdressbrownaccess.jpg');
%I = imread('https://monicastettler.files.wordpress.com/2018/11/whitejeansandjacket.jpg');
%I = imread('https://monicastettler.files.wordpress.com/2018/11/stripedshirtwhitejeans.jpg');
%I = imread('https://monicastettler.files.wordpress.com/2018/11/stripeddressandjacket.jpg');
%I = imread('https://monicastettler.files.wordpress.com/2018/11/purplejersey.jpg');
%I = imread('https://monicastettler.files.wordpress.com/2018/11/plaidshirt.jpg');
%I = imread('https://monicastettler.files.wordpress.com/2018/11/jeansandjacket.jpg');
%I = imread('https://monicastettler.files.wordpress.com/2018/11/pencilskirt.jpg');
%I = imread('https://monicastettler.files.wordpress.com/2018/10/blackdressbrownaccess.jpg');

Ig = rgb2gray(I);
%I = imread('circlesBrightDark.png');
figure
imshow(Ig)
title('grayscale')

I2 = Ig < 100;
figure
imshow(I2)
title('funky binarizing')

I3 = bwareafilt(I2,1); %pick largest object 
figure
imshow(I3)
title('use bwareafilt')

red = I(:,:,1);
green = I(:,:,2);
blue = I(:,:,3);

maskr = immultiply(red, I3);
maskg = immultiply(green,I3);
maskb = immultiply(blue,I3);

seg = cat(3, maskr,maskg,maskb);
figure
imshow(seg)
title('get original color back to segment')

%I want to get rid of biggest item from grayscale image by whiting it out
g2 = Ig; %initial reduced original gray image
for i = 1:size(Ig,1)  
    for j = 1:size(Ig,2)
        if I3(i,j) ==1 %if the mask (bwareafilt) has white, then make white in grayscale
            g2(i,j) = 255;  
        end
    end
end

figure
imshow(g2)
title('Gray image without biggest item')

%%%%%%%%%%%%%%%%%  ROUND 2  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


I2 = g2 < 100;
figure
imshow(I2)
title('funky binarizing')

I3 = bwareafilt(I2,1); %pick largest object 
figure
imshow(I3)
title('use bwareafilt')

red = I(:,:,1);
green = I(:,:,2);
blue = I(:,:,3);

maskr = immultiply(red, I3);
maskg = immultiply(green,I3);
maskb = immultiply(blue,I3);

seg = cat(3, maskr,maskg,maskb);
figure
imshow(seg)
title('get original color back to segment')

%I want to get rid of biggest item from grayscale image by whiting it out
g3 = g2; %initial reduced original gray image
for i = 1:size(Ig,1)  
    for j = 1:size(Ig,2)
        if I3(i,j) ==1 %if the mask (bwareafilt) has white, then make white in grayscale
            g3(i,j) = 255;  
        end
    end
end

figure
imshow(g3)
title('Gray image without biggest item')

%%%%%%%%%%%%%%%  ROUND 3 %%%%%%%%%%%%%%%%%%%%%%%

I2 = g3 < 100;
figure
imshow(I2)
title('funky binarizing')

I3 = bwareafilt(I2,1); %pick largest object 
figure
imshow(I3)
title('use bwareafilt')

red = I(:,:,1);
green = I(:,:,2);
blue = I(:,:,3);

maskr = immultiply(red, I3);
maskg = immultiply(green,I3);
maskb = immultiply(blue,I3);

seg = cat(3, maskr,maskg,maskb);
figure
imshow(seg)
title('get original color back to segment')

%I want to get rid of biggest item from grayscale image by whiting it out
g4 = g3; %initial reduced original gray image
for i = 1:size(Ig,1)  
    for j = 1:size(Ig,2)
        if I3(i,j) ==1 %if the mask (bwareafilt) has white, then make white in grayscale
            g4(i,j) = 255;  
        end
    end
end

figure
imshow(g4)
title('Gray image without biggest item')

%%%%%%%%%%%%%%%%%% ROUND 4 %%%%%%%%%%%%%%%%%%%%%%%%
I2 = g4 < 100;
figure
imshow(I2)
title('funky binarizing')

I3 = bwareafilt(I2,1); %pick largest object 
figure
imshow(I3)
title('use bwareafilt')

red = I(:,:,1);
green = I(:,:,2);
blue = I(:,:,3);

maskr = immultiply(red, I3);
maskg = immultiply(green,I3);
maskb = immultiply(blue,I3);

seg = cat(3, maskr,maskg,maskb);
figure
imshow(seg)
title('get original color back to segment')

%I want to get rid of biggest item from grayscale image by whiting it out
g5 = g4; %initial reduced original gray image
for i = 1:size(Ig,1)  
    for j = 1:size(Ig,2)
        if I3(i,j) ==1 %if the mask (bwareafilt) has white, then make white in grayscale
            g5(i,j) = 255;  
        end
    end
end

figure
imshow(g5)
title('Gray image without biggest item')

%%%%%%%%%%%%%%%%%% ROUND 5 %%%%%%%%%%%%%%%%%%%%%%%%
I2 = g5 < 100;
figure
imshow(I2)
title('funky binarizing')

I3 = bwareafilt(I2,1); %pick largest object 
figure
imshow(I3)
title('use bwareafilt')

red = I(:,:,1);
green = I(:,:,2);
blue = I(:,:,3);

maskr = immultiply(red, I3);
maskg = immultiply(green,I3);
maskb = immultiply(blue,I3);

seg = cat(3, maskr,maskg,maskb);
figure
imshow(seg)
title('get original color back to segment')

%I want to get rid of biggest item from grayscale image by whiting it out
g6 = g5; %initial reduced original gray image
for i = 1:size(Ig,1)  
    for j = 1:size(Ig,2)
        if I3(i,j) ==1 %if the mask (bwareafilt) has white, then make white in grayscale
            g6(i,j) = 255;  
        end
    end
end

figure
imshow(g6)
title('Gray image without biggest item')

%%%%%%%%%%%%%%%%%% ROUND 6 %%%%%%%%%%%%%%%%%%%%%%%%
I2 = g6 < 100;
figure
imshow(I2)
title('funky binarizing')

I3 = bwareafilt(I2,1); %pick largest object 
figure
imshow(I3)
title('use bwareafilt')

red = I(:,:,1);
green = I(:,:,2);
blue = I(:,:,3);

maskr = immultiply(red, I3);
maskg = immultiply(green,I3);
maskb = immultiply(blue,I3);

seg = cat(3, maskr,maskg,maskb);
figure
imshow(seg)
title('get original color back to segment')

%I want to get rid of biggest item from grayscale image by whiting it out
g7 = g6; %initial reduced original gray image
for i = 1:size(Ig,1)  
    for j = 1:size(Ig,2)
        if I3(i,j) ==1 %if the mask (bwareafilt) has white, then make white in grayscale
            g7(i,j) = 255;  
        end
    end
end

figure
imshow(g7)
title('Gray image without biggest item')

%%%%%%%%%%%%%%%%%% ROUND 7 %%%%%%%%%%%%%%%%%%%%%%%%
I2 = g7 < 100;
figure
imshow(I2)
title('funky binarizing')

I3 = bwareafilt(I2,1); %pick largest object 
figure
imshow(I3)
title('use bwareafilt')

red = I(:,:,1);
green = I(:,:,2);
blue = I(:,:,3);

maskr = immultiply(red, I3);
maskg = immultiply(green,I3);
maskb = immultiply(blue,I3);

seg = cat(3, maskr,maskg,maskb);
figure
imshow(seg)
title('get original color back to segment')

%I want to get rid of biggest item from grayscale image by whiting it out
g8 = g7; %initial reduced original gray image
for i = 1:size(Ig,1)  
    for j = 1:size(Ig,2)
        if I3(i,j) ==1 %if the mask (bwareafilt) has white, then make white in grayscale
            g8(i,j) = 255;  
        end
    end
end

figure
imshow(g8)
title('Gray image without biggest item')

%%%%%%%%%%%%%%%%%% ROUND 8 %%%%%%%%%%%%%%%%%%%%%%%%
I2 = g8 < 100;
figure
imshow(I2)
title('funky binarizing')

I3 = bwareafilt(I2,1); %pick largest object 
figure
imshow(I3)
title('use bwareafilt')

red = I(:,:,1);
green = I(:,:,2);
blue = I(:,:,3);

maskr = immultiply(red, I3);
maskg = immultiply(green,I3);
maskb = immultiply(blue,I3);

seg = cat(3, maskr,maskg,maskb);
figure
imshow(seg)
title('get original color back to segment')

%I want to get rid of biggest item from grayscale image by whiting it out
g9 = g8; %initial reduced original gray image
for i = 1:size(Ig,1)  
    for j = 1:size(Ig,2)
        if I3(i,j) ==1 %if the mask (bwareafilt) has white, then make white in grayscale
            g9(i,j) = 255;  
        end
    end
end

figure
imshow(g9)
title('Gray image without biggest item')

%%%%%%%%%%%%%%%%%% ROUND 9 %%%%%%%%%%%%%%%%%%%%%%%%
I2 = g9 < 100;
figure
imshow(I2)
title('funky binarizing')

I3 = bwareafilt(I2,1); %pick largest object 
figure
imshow(I3)
title('use bwareafilt')

red = I(:,:,1);
green = I(:,:,2);
blue = I(:,:,3);

maskr = immultiply(red, I3);
maskg = immultiply(green,I3);
maskb = immultiply(blue,I3);

seg = cat(3, maskr,maskg,maskb);
figure
imshow(seg)
title('get original color back to segment')

%I want to get rid of biggest item from grayscale image by whiting it out
g10 = g9; %initial reduced original gray image
for i = 1:size(Ig,1)  
    for j = 1:size(Ig,2)
        if I3(i,j) ==1 %if the mask (bwareafilt) has white, then make white in grayscale
            g10(i,j) = 255;  
        end
    end
end

figure
imshow(g10)
title('Gray image without biggest item')





 
