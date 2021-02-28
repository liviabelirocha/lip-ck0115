declare proc {DGenerate N ?Xs}
   NewXs
   fun{F2}
      {DGenerate N+1 NewXs}
      NewXs
   end
in
   Xs=N#F2
end

declare fun {DSum Xs ?A Limit}
   if Limit>0 then X#F2={Xs}
   in {DSum F2 A+X Limit-1}
   else A end
end

local Xs S in
   {DGenerate 0 Xs}
   S={DSum Xs.2 0 3}
   {Browse S}
end