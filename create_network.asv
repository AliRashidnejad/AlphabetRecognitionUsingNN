function [net]= create_network(input,target)
% CREATE_NETWORK - Create a feed-forward backpropagation network with one
% hidden layer containing 15 nodes.
% Assign the transfer function of both layers a 'logsig'
%
% Arguments:
% input - Network inputs.
% target - Target value.
%
% Returns:
% net - Network object created
%
%Create the network here:
D=zeros(35,2);
D(:,2)=D(:,2)+1;
net=newff(D,[15,27],{'logsig','logsig'},'traingdx');
% Scale down weights and bias by 0.01
net.IW{1,1}=net.IW{1,1}*0.01;
net.LW{2,1}=net.LW{2,1}*0.01;
net.b{1}=net.b{1}*0.01;
net.b{2}=net.b{2}*0.01;
% net = newff(input,target,15,{'logsig' 'logsig'});
%  Scale down weights and bias by 0.01
% net.LW{2,1}=0.01*net.LW{2,1};
% net.b{2}=0.01*net.b{2};

