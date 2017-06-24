function [net,netn] = train_network(net,input,target)
% TRAIN_NETWORK - Train the network
%
% Arguments:
% net - Neural network.
% input - Input matrix.
% target - Desired output matrix.
% Returns:
% net - New network trained by input
% netn - New network trained by noisy_input
%   net = train(net,input,target);  
% Adjust the training parameters as follows:
% maximum number of epochs to train=5000
net.trainParam.epochs=5000;
% training function='traingdx'
net.trainFcn='traingdx';
% Mean-squared error goal=0
net.trainParam.goal = 0;
% Momentum constant=0.95.
net.trainParam.mc =0.95;
% Training...

% 1: train a network without noise here:
net = train(net,input,target);

% 2: train the network with noisy alphabets here:
% For this step of training: Mean-squared error goal=0.01
net.trainParam.goal = 0.01;
for i=1:4
    noisy=generate_charsn(input,i);
    net = train(net,noisy,target);
end
%Train the network with ideal alphabets again here:
% For this step of training: Mean-squared error goal=0

net.trainParam.goal = 0.0;
net = train(net,input,target);
