%
% Copyright (c) 2015, Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "license.txt" for license terms.
%
% Project Code: YPEA102
% Project Title: Implementation of Particle Swarm Optimization in MATLAB
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: S. Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%
clc;
clear;
close all;
%% Problem Definition
CostFunction=@(x) obj1(x);        % Cost Function
nVar=4;            % Number of Decision Variables
VarSize=[1 nVar];   % Size of Decision Variables Matrix
VarMin=1;         % Lower Bound of Variables
VarMax= 224;         % Upper Bound of Variables
%% PSO Parameters
MaxIt=10;      % Maximum Number of Iterations
nPop=20;        % Population Size (Swarm Size)
% PSO Parameters
w=1;            % Inertia Weight
wdamp=0.99;     % Inertia Weight Damping Ratio
c1=1.5;         % Personal Learning Coefficient
c2=2.0;         % Global Learning Coefficient
% If you would like to use Constriction Coefficients for PSO,
% uncomment the following block and comment the above set of parameters.
% % Constriction Coefficients
% phi1=2.05;
% phi2=2.05;
% phi=phi1+phi2;
% chi=2/(phi-2+sqrt(phi^2-4*phi));
% w=chi;          % Inertia Weight
% wdamp=1;        % Inertia Weight Damping Ratio
% c1=chi*phi1;    % Personal Learning Coefficient
% c2=chi*phi2;    % Global Learning Coefficient
% Velocity Limits
VelMax=0.1*(VarMax-VarMin);
VelMin=-VelMax;
psoSoo;
%% Results
figure;
%plot(BestCost,'LineWidth',2);
semilogy(BestCost,'LineWidth',2);
xlabel('Iteration');
ylabel('Best Cost');
grid on;
A=imread('TigerHunt.jpg');
[n,m,q]=size(A);
ratio1=n/224;
ratio2=m/224;
figure,imshow(A);
I = imread('TigerHunt.jpg');
I1=imresize(I,[224 224 ]);
position = GlobalBest.Position;

I1=imresize(I1,[n m]);

for ii=1:5
    
Positions=particle(ii).Position;
bboxes=Positions;
bboxes(1)=bboxes(1)*ratio1;
bboxes(2)=bboxes(2)*ratio2;
bboxes(3)=bboxes(3)*ratio1;
bboxes(4)=bboxes(4)*ratio2;
scores=1/particle(ii).Cost;
I1 = insertObjectAnnotation(I1,'rectangle',bboxes,scores);

imshow(I1)

end

% scores=1/GlobalBest.Cost;
% bboxes=position;
% I = insertObjectAnnotation(I1,'rectangle',bboxes,scores);
% figure
% imshow(I)


