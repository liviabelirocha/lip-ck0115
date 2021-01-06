% item A
% É o mesmo resultado, quando BP1 é falso, BP2 não é nem chamado.

%item B
declare fun {OrElse BP1 BP2}
   if {BP1} then true else {BP2} end
end
% Quando BP1 é verdadeiro, BP2 não é chamado
% Quando BP1 é falso, BP2 é executado