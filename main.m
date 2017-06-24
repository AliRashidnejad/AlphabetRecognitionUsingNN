% MAIN CODE FOR CHARACHTER RECOGNITION NEURAL NETWORK:

% loading ideal date (capital alphabet):
% alphabet=load('Capital_alphabet.mat');% capital characters
% alphabet=getfield(alphabet,'alphabet');
% 
% X=zeros(35,1);
% X(1)=1;
% creating  the network for a special target
% net = create_network(alphabet(:,1)',X');
% generating data for network:
clear all ; 
clc;
close all ;

[alphabet,eye] = generate_chars();
% creating the network:

net = create_network(alphabet,eye);

% training it via pure data and some noisy one: (in four levels)

net=train_network(net,alphabet,eye);


% creating input name and 5 different noisy froms of that:
test_network(net,alphabet);

%
% test_network(net,alphabet,targets)



    
    
    
    

