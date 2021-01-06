% item A

declare fun {Sum1 N}
    if N==0 then 0 else N+{Sum1 N-1} end
end

declare fun {Sum2 N S}
    if N==0 then S else {Sum2 N-1 N+S} end
end

declare fun {Sum1Kernel N}
    if N == 0 then 0
    else R in
        R = {Sum1 N-1}
        N + R
    end
end

declare fun {Sum2Kernel N S}
    if N == 0 then S
    else R1 R2 in
        R1 = N-1
        R2 = N+S
        {Sum2 R1 R2}
    end
end

% item B

% {Sum1 10} fica gigantesco, um pouco inviável de fazer a mão

% {Sum2 10 0} fica menor:
% {Sum2 10 0}
% {Sum2 9 10}
% {Sum2 8 19}
% {Sum2 7 27}
% {Sum2 6 34}
% {Sum2 5 40}
% {Sum2 4 45}
% {Sum2 3 49}
% {Sum2 2 52}
% {Sum2 1 54}
% {Sum2 0 55}
% retornando 55

% item C
{Browse {Sum1 100000000}} % irá acontecer um overflow da stack
{Browse {Sum2 100000000 0}} % vai rodar normalmente