declare Max3 Max5
declare proc {SpecialMax Value ?SMax}
    fun {SMax X}
        if X>Value then X else Value end
    end
end

{SpecialMax 3 Max3}
{SpecialMax 5 Max5}

{Browse [{Max3 4} {Max5 4}]} % [4 5]

% depois de rodar os testes, os resultados foram os mesmos