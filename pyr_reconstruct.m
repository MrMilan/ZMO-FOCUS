function im = pyr_reconstruct(pyr) 
% function im = pyr_reconstruct(pyr) 
%
% opposite of pyr_build. Composes im from layers in pyr. 
%
% The following must hold within numerical precision:  
% im is identical to pyr_reconstruct(pyr_build(im)) 

% Implement me: 

im = zeros(size(pyr.residuals{1})); 
