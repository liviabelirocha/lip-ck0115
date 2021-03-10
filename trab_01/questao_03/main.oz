functor 

    import
        Browser
        Logic at 'logic_functor.ozf'

    define

        proc {FullSubtractor A B BorrowIn ?D ?BorrowOut}
            X Y Z
        in
            X = {Logic.xorG A B}
            Y = {Logic.andG {Logic.notG A} B}
            Z = {Logic.andG {Logic.notG X} BorrowIn}

            D = {Logic.xorG X BorrowIn}
            BorrowOut = {Logic.orG Y Z}
        end

        A = 1|_
        B = 0|_
        BorrowIn = 0|_ D BorrowOut in
   
        {FullSubtractor A B BorrowIn D BorrowOut}
        {Browser.browse D}
        {Browser.browse BorrowOut}

end