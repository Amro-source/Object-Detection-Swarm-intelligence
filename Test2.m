clc; clear  all; close all;

% Access the trained model 
net = mobilenetv2();

% See details of the architecture 
net.Layers
load('particles.mat');
% Read the image to classify 
I = imread('stingray1.jpg');

% I2 = imcrop(I,[75 68 130 112]);
% figure,imshow(I2);

% I=imcrop(I);
A=I;

figure,imshow(A);

figure,imshow(I);

% Adjust size of the image 
sz = net.Layers(1).InputSize 
% I = I(1:sz(1),1:sz(2),1:sz(3));


I1=imresize(I,[224 224 ]);

figure,imshow(I1);


% % Classify the image using mobilenetv2 
% label = classify(net, I)



% Classify the image using mobilenetv2 
label1 = classify(net, I1)
[YPred,probs]=classify(net, I1);


stingrayProbs=probs(:,7);



position = GlobalBest.Position;
% Set the label to display the integers 5 and 10 (U.S. cents).

label = [5 ];
% Insert the annotations.

% RGB = insertObjectAnnotation(I,'rectangle',position,'TextBoxOpacity',0.9);% Display.
% 
% figure
% imshow(RGB)

scores=1/GlobalBest.Cost;
bboxes=position;
I = insertObjectAnnotation(I,'rectangle',bboxes,scores);
figure
imshow(I)


% label_str{ii} = ['confidence: ' num2str(1,'%0.2f') '%'];
% 
% 
% position = [23 373 60 66];
% 
% rgb = insertObjectAnnotation(I, 'rectangle', position, label_str,'textboxopacity', 0.9, 'fontsize', 18);


% % Show the image and the classification results 
figure 
imshow(I) 
text(10,20,char(label),'Color','white')