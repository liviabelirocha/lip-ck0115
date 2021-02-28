declare fun {Fib X}
   if X =< 2 then 1
   else {Fib X-1} + {Fib X-2} end
end

declare fun {ConcurrentFibonacci X}
   if X =< 2 then 1
   else thread {ConcurrentFibonacci X-1} end + {ConcurrentFibonacci X-2} end
end

declare fun {ElapsedTime P Size}
   Start={Time.time} Fin Result
in
   Result = {P Size}
   Fin = {Time.time}
   Fin-Start
end

{Browse {ElapsedTime Fib 35}}
{Browse {ElapsedTime ConcurrentFibonacci 35}}