declare fun {HalfInterval F A B}
    fun {GoodEnough V}
        {Abs V} < 0.0001
    end

    fun {Improve A B V X}
        if V > 0.0 then A#X
        else X#B end
    end

    fun {HalfIntervalIter A B}
        X = (A+B)/2.0
        V = {F X}
        in
            if {GoodEnough V} then X
            else A1 B1 in
                A1#B1={Improve A B V X}
	            {HalfIntervalIter A1 B1}
            end
    end


    in {HalfIntervalIter A B}
end