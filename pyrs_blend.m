function out_pyr = pyrs_blend(stack, stack_weights)
% function out_pyr = pyrs_blend(stack, stack_weights)
% 
% INPUT: 
%    stack: stack of pyramids 
%    stack_weights: obtained from compute_weights function
% OUTPUT: 
%     out_pyr: a single pyramid obtained by weighted average of stack.

% Implement me: 

out_pyr = struct('residuals', {cell(1, layerN)}, 'bottom_layer', []); 
