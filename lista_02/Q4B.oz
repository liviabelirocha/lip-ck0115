fun {Q4B Exp Pattern V1 V2}
    if {Label Exp} \= {Label Pattern} then {V2}
    elseif {Arity Exp} \= {Arity Pattern} then {V2}
    else
        Pattern = Exp
        {V1}
    end
end