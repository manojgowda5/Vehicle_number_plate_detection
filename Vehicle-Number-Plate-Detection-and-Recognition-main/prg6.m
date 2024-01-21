i=imread('C:\Users\manoj\OneDrive\Pictures\Saved Pictures\394052.jpg' );
i=imresize(i,0.5);
subplot(2,2,1);
imshow(i);
title('oi')
k=imadjust(i,[0.3 0.7],[]);
subplot(2,2,2);
imshow(k);
title('enhancedimage')
redchannel=k(:,:,1);
greenchannel=k(:,:,2);
bluechannel=k(:,:,3);
data=double([redchannel(:),greenchannel(:),bluechannel(:)]);
for i=1:10
    numberofclasses = i;
    [m,n]=kmeans(data,numberofclasses);
    m=reshape(m,size(k,1),size(k,2));
    n=n/255;
    clusterdimage=label2rgb(m,n);
    subplot(2,2,3);
    imshow(clusterdimage);
    title('segmented imgage');
end