

clc;clear all; close all;

net=alexnet;


%%%%%1-Input Layer 227x227

%%%%%%2-ConV2D  LAyer

Conv1Filter=net.Layers(2,1).FilterSize;
Conv1Weights=net.Layers(2,1).Weights;



[m,n,p,q]=size(Conv1Weights);
%%%%Convolution Layer 11x11x3x96

%%%%%3-ReLU
%%%%%4-Cross Channel Normalization Layer
%%%%%5-MaxPooling 2D
%%%%%6-GroupedConv2D Layer 



