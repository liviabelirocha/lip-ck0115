declare
fun lazy {Ints N}
   N|{Ints N+1}
end

declare
fun {SumList L}
   case L of X|L1 then X+{SumList L1}
   else 0 end
end

{Browse {SumList {Ints 0}}}