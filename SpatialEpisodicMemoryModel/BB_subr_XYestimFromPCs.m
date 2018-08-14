

% Subroutine for the BB model of spatial cogniton (2014-2018) 
% Code developed by Andrej Bicanski (andrej.bicanski@gmail.com)
% 
% published in eLife
%
% REF
%
% Some code has been ported from a the predecessor of this model, the BBB model.
% (Patrick Byrne, Sue Becker and Neil Burgess, code available on request)

% estimate position from PC activity bump to able to plot imagined position

function [Xag_PCestim,Yag_PCestim] = BB_subr_XYestimFromPCs(H_rate,NHx,NHy)

Htmp = reshape(H_rate,NHx,NHy)';
Ytmp = sum(Htmp,2);
Xtmp = sum(Htmp,1);
Xag_PCestim = find(Xtmp==max(Xtmp))/2;
Yag_PCestim = find(Ytmp==max(Ytmp))/2;

end
