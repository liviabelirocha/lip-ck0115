declare
proc {Test X}
   case X of f(a Y c) then {Browse 'case'(1)}
   else {Browse'case'(2)} end
end

declare X Y {Test f(X b Y)} % nada ocorre
declare X Y {Test f(a Y d)} % 'case'(2)
declare X Y {Test f(X Y d)} % nada ocorre

declare X Y
if f(X Y d) == f(a Y c) then {Browse 'case'(1)}
else {Browse 'case'(2)} end % 'case'(2)