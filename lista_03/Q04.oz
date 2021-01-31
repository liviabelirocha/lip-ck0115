declare fun {Factorial N}
    fun {FactorialIter N A}
        if N==1 then A
        else {FactorialIter N-1 N*A} end
    end

    in {FactorialIter N 1}
end