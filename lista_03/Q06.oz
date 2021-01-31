fun {Reverse Xs}
    fun {ReverseIter Xs Ys}
        case Xs of nil then Ys
        [] X|Xr then {ReverseIter Xr X|Ys} end
    end
    
    in {ReverseIter Xs nil}
end