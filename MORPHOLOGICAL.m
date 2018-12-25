I=imread('building.JPG');
Im=rgb2gray(I);

se = strel('diamond',1);
ero = imerode(Im,se);
dil = imdilate(Im,se);
open = imopen(Im,se);
close = imclose(Im,se);

subplot(2,3,1);
imshow(I);title('Original image');
subplot(2,3,2);
imshow(Im);title('Gray image');
subplot(2,3,3);
imshow(ero);title('Erosion image');
subplot(2,3,4);
imshow(dil);title('Dilation image');
subplot(2,3,5);
imshow(open);title('Opening image');
subplot(2,3,6);
imshow(close);title('Closing image');