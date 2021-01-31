declare fun {Appens Xs Ys}
    fun {ListReversal Xs}
        fun {ListReversalIter Xs A}
            case Xs of nil then A
	        [] X|Xr then {ListReversalIter Xr X|A} end
        end

        in {ListReversalIter Xs nil}
    end

    fun {AppendReverseList Xs Ys}
        case Xs of nil then Ys
        [] X|Xr then {AppendReverseList Xr X|Ys} end
    end

    in {AppendReverseList {ListReversal Xs} Ys}    
end