functor 

    import
        Browser
        Parser at 'parsing_functor.ozf'

    define
        Sn

        A = {Parser.prog
            [program foo ';' while a '+' 3 '<' b 'do' b ':=' b '+' 1 'end']
            Sn}

        {Browser.browse A}
    
end