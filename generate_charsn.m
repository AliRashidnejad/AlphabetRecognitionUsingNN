function noisy_alphabet = generate_charsn(alphabet,noise_level)
% GENERATE_CHARSN – Create distorted patterns
%
% Arguments:
% alphabet - matrix of 5x7 bit maps for each letter.
% noise_level - Number of bits which will be changed .
% Returns:
% noisy_alphabet - Alphabet with noise
% add noise to the original alphabet
noisy_alphabet = alphabet;
if noise_level~=0
size_image = length(alphabet(:,1));
% choose noise_level amount of random positions for each letter matrix
for i=1:size(alphabet,2)
R(i,:) = round(rand(1,noise_level)*(size_image-1)+1)+(i-1)*(size_image);
while length(unique(R(1,:)))< noise_level % prevent same random numbers to be generated
R(i,:) = round(rand(1,noise_level)*(size_image-1)+1)+(i-1)*(size_image);
end
end
% randomly change noise_level number of bits in each letter image : 0->1 and 1->0
noisy_alphabet(R) = imcomplement(alphabet(R));
end