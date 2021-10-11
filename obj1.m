function z=obj1(x)
% disp(x)   

% z=sum(x.^2);
net = mobilenetv2();

I = imread('TigerHunt.jpg');


I1=imcrop(I,[x(1) x(2) x(3) x(4)]);
I1=imresize(I1,[224 224 ]);

% tic
[YPred,probs]=classify(net, I1);
% toc

% MaxProb=max(max(probs(:,:));

[val, idx] = max(probs);
% idx
% val
% stingrayProbs=probs(:,7);
z=val;

bbox=[x(1) x(2) x(3) x(4)];

fid=fopen('M.txt','wt');
% writematrix(M, "M.txt");
probability=[val idx];

filename= char(randi([33 126],1,10));

filename='tiger2.txt';
fid=fopen(filename,'at');

% disp(z)
if z >=0.5
    disp('Bingo!!!!!!!! ');
    label=classify(net, I1)
     fprintf(fid, '%d %d %d %d \n', bbox);
%     writematrix(bbox, "M.txt");
%      writematrix(probability,"M.txt");
 
fclose(fid);

end

% fclose(fid);

z=1/z;
end
