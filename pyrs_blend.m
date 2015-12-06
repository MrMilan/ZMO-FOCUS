function out_pyr = pyrs_blend(stack, stack_weights)
% function out_pyr = pyrs_blend(stack, stack_weights)
%
% INPUT:
%    stack: stack of pyramids
%    stack_weights: obtained from compute_weights function
% OUTPUT:
%     out_pyr: a single pyramid obtained by weighted average of stack.

% Implement me:
layerN = numel(stack.residuals);
out_pyr = struct('residuals', {cell(1, layerN)}, 'bottom_layer', []); 
out_pyr.bottom_layer = sum(stack.bottom_layer.*stack_weights.bottom_layer,3);
for i=1:layerN
    out_pyr.residuals{i} = sum(stack.residuals{i}.*stack_weights.residuals{i},3);
end