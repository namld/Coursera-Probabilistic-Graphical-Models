% Returns the log probability of an assignment A in a distribution defined by factors F
% P(D,I,G,S,L) = P(D) P(I) P(G|I,D) P(S|I) P(L|G)
% Copyright (C) Daphne Koller, Stanford University, 2012

function logp = LogProbOfJointAssignment(F, A)

% work in log-space to prevent underflow
logp = 0.0;
for i = 1:length(F)
    logp = logp + log(GetValueOfAssignment(F(i), A, 1:length(A)));
end