declare fun {CubeRoot X}
    fun {GoodEnough Guess}
        {Abs Guess * Guess * Guess - X} < 0.00001 * X
    end

    fun {Improve Guess}
        (X / (Guess * Guess) + 2.0 * Guess) / 3.0
    end

    fun {CubeRootIter Guess}
        if {GoodEnough Guess} then Guess
        else {CubeRootIter {Improve Guess}} end
    end

    Guess = 1.0

    in {CubeRootIter Guess}
end

{Browse {CubeRoot 27.0}}
