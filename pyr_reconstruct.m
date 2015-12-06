function im = pyr_reconstruct(pyr)
% function im = pyr_reconstruct(pyr)
%
% opposite of pyr_build. Composes im from layers in pyr.
%
% The following must hold within numerical precision:
% im is identical to pyr_reconstruct(pyr_build(im))

% Implement me:

for i = layersN:-1:1
    D = pyr.bottom_layer;
    R = pyr.residuals{i};
    im = pyr_up(D, R);
    D = im;
end

