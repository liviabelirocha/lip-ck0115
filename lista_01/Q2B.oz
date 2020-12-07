declare
fun {Fact N}
   if N==0 then 1 else N*{Fact N-1} end
end

declare
fun {Comb N K}
   {Fact N} div ({Fact K}*{Fact N-K})
end

declare
fun {AlternateComb N K}
   if K > (N div 2) then {Comb N N-K}
   else {Comb N K} end
end

{Browse {AlternateComb 5 3}}