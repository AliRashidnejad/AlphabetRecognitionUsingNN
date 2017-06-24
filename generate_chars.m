function [alphabet,targets] = generate_chars()
% GENERATE_CHARS – Create target patterns
%
% Returns:
% alphabet - 35x26 matrix of 5x7 bit maps for each letter.
% targets - 26x26 target vectors.
alphabet=load('Capital_alphabet_27.mat');% capital characters
alphabet=getfield(alphabet,'alphabet_27');
targets=eye(27);

% show the image of alphabet

figure;
for i=1:27
subplot(4,7,i);
colormap('summer');
imagesc(reshape(alphabet(:,i),5,7)',[0,1]);
axis off;
end