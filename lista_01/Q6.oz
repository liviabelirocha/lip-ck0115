% Item A

declare
fun {ShiftLeft L}
    case L of H|T then
        H|{ShiftLeft T}
    else [0] end
end

declare
fun {ShiftRight L} 0|L end

declare
fun {OpList Op L1 L2}
    case L1 of H1|T1 then
        case L2 of H2|T2 then
            {Op H1 H2}|{OpList Op T1 T2}
        end
    else nil end
end

declare
fun {GenericPascal Op N}
    if N==1 then [1]
    else L in
        L={GenericPascal Op N-1}
        {OpList Op {ShiftLeft L} {ShiftRight L}}
    end
end

declare
fun {Adition X Y}
   X+Y
end

declare
fun {Subtraction X Y}
   X-Y
end

declare
fun {Multiplication X Y}
   X*Y
end

declare
fun {Mull X Y}
   (X+1)*(Y+1)
end

declare
fun {GenericPascalVariation Op N}
   if N==1 then [1]
   else {GenericPascal Op N}|{GenericPascalVariation Op N-1} end
end

{Browse {GenericPascalVariation Adition 5}}
{Browse {GenericPascalVariation Subtraction 5}}
{Browse {GenericPascalVariation Multiplication 5}} 
{Browse {GenericPascalVariation Mull 5}}

{Browse {GenericPascal Mull 10}}

% Item B

for I in
   1..10 do {Browse {GenericPascal Mull I}}
end