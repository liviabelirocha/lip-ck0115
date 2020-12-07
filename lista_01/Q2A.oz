declare
fun {Fact N}
    if N==0 then 1 else N*{Fact N-1} end
end

declare
fun {Comb N K}
    {Fact N} div ({Fact K}*{Fact N-K})
end

{Browse {Comb 5 3}}

declare
fun {AlternateComb N K}
    if K==0 then 1
   else {Comb N K} div {Comb K K} end
end

{Browse {AlternateComb 5 3}}
