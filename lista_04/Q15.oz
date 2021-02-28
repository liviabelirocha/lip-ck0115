declare fun {Add X Y} X+Y end
declare fun lazy {LazyAdd X Y} X+Y end
declare fun {Sub X Y} X-Y end
declare fun lazy {LazySub X Y} X-Y end
declare fun {LessThan X Y} X=<Y end
declare fun lazy {LazyLessThan X Y} X=<Y end

declare fun {Fibonacci X}
   if {LessThan X 2} then 1
   else {Add {Fibonacci {Sub X 1}} {Fibonacci {Sub X 2}}} end
end

declare fun {LazyFibonacci X}
   if {LazyLessThan X 2} then 1
   else {LazyAdd {LazyFibonacci {LazySub X 1}} {LazyFibonacci {LazySub X 2}}} end
end


declare fun {ElapsedTime P Size}
   Start={Time.time} Fin Result
in
   Result = {P Size}
   Fin = {Time.time}
   Fin-Start
end



{Browse {ElapsedTime Fibonacci 35}}
{Browse {ElapsedTime LazyFibonacci 35}}

{Browse {ElapsedTime Fibonacci 30}}
{Browse {ElapsedTime LazyFibonacci 30}}

{Browse {ElapsedTime Fibonacci 25}}
{Browse {ElapsedTime LazyFibonacci 25}}