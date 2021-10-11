function z=Stingray(x)
% disp(x)   

% z=sum(x.^2);
net = mobilenetv2();

I = imread('stingray1.jpg');


I=imcrop(I,[x(1) x(2) x(3) x(4)]);
I1=imresize(I,[224 224 ]);
% tic
[YPred,probs]=classify(net, I1);
% toc
stingrayProbs=probs(:,7);
z=stingrayProbs;

% disp(z)
if z >0.6
%    disp('Bingo!!!!!!!! ');
  

end


z=1/z;
end
