clc; clear all; close all;


net=squeezenet;
Layers=net.Layers;


%%%%%1-Input Image Layer
%%%%%2-Conv2D Layer
%%%%%3-RELU LAYER
%%%%%4-MAXPOOLING 2D
%%%%%5-Conv2D Layer
%%%%%6-RELU LAYER
%%%%%7-Conv2D Layer
%%%%%8-RELU LAYER
%%%%%9-Conv2D Layer
%%%%%10-RELU LAYER




conv1=net.Layers(2,1);
conv1Weights=conv1.Weights;

Wxxx1=conv1Weights(:,:,:,1);
[m,n,p,q]=size(conv1Weights);
%%%%%3x3x3x64 


conv2=net.Layers(5,1);

conv2Weights=conv2.Weights;

Wxxx2=conv2Weights(:,:,:,1);
[m2,n2,p2,q2]=size(conv2Weights);


conv3=net.Layers(7,1);

conv3Weights=conv3.Weights;

Wxxx3=conv3Weights(:,:,:,1);
[m3,n3,p3,q3]=size(conv3Weights)




