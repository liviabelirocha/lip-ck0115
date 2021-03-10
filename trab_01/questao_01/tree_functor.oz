functor

    import 
        QTk at 'x-oz://system/wp/QTk.ozf'

    export
        depthFirst: DepthFirst
        addXY: AddXY
        drawTree: DrawTree

    define
        Scale = 40

        proc {DepthFirst Tree Level LeftLim ?RootX ?RightLim}
            case Tree
            of tree(x:X y:Y left:leaf right:leaf ...) then
                X=RootX=RightLim=LeftLim
                Y=Scale*Level
            [] tree(x:X y:Y left:L right:leaf ...) then
                X=RootX
                Y=Scale*Level
                {DepthFirst L Level+1 LeftLim RootX RightLim}
            [] tree(x:X y:Y left:leaf right:R ...) then
                X=RootX
                Y=Scale*Level
                {DepthFirst R Level+1 LeftLim RootX RightLim}
            [] tree(x:X y:Y left:L right:R ...) then
                    LRootX LRightLim RRootX RLeftLim
                in
                    Y=Scale*Level
                    {DepthFirst L Level+1 LeftLim LRootX LRightLim}
                    RLeftLim=LRightLim+Scale
                    {DepthFirst R Level+1 RLeftLim RRootX RightLim}
                    X=RootX=(LRootX+RRootX) div 2
            end
        end

        fun {AddXY Tree}
            case Tree
            of tree(left:L right:R ...) then
                {Adjoin Tree
                    tree(x:_ y:_ left:{AddXY L} right:{AddXY R})}
            [] leaf then
                leaf
            end
        end

        % Funções para desenhar a árvore

        proc {Traverse1 PosTree Level P}
            case PosTree
            of tree(x:X y:Y left:L right:R ...) then
                {P X Y PosTree Level}
                {Traverse1 L Level+1 P}
                {Traverse1 R Level+1 P}
            [] leaf then
                skip
            end
        end
                        
        proc {Traverse3 PosTree Level P}
            case PosTree
            of tree(x:X y:Y left:L=tree(x:LX y:LY ...) ...) then
                {P X Y PosTree LX LY L Level}
                {Traverse3 L Level+1 P}
            else skip end
            case PosTree
            of tree(x:X y:Y right:R=tree(x:RX y:RY ...) ...) then
                {P X Y PosTree RX RY R Level}
                {Traverse3 R Level+1 P}
            else skip end
        end

        fun {MakeDrawTree}
            Can
            Des=td(canvas(handle:Can glue:nswe bg:white
                        width:400 height:300))
            Win={QTk.build Des}
            TagPtr={NewCell proc {$ _} skip end}
            {Win show}
        in
            proc {$ PosTree}
                Tag={Can newTag($)}
            in
                {{Access TagPtr} delete}
                {Assign TagPtr Tag}
                {Traverse3 PosTree 0
                proc {$ X Y T AX AY AT L}
                    {Can create(line X Y AX AY fill:black tags:Tag)}
                end}
                {Traverse1 PosTree 0
                proc {$ X Y T L}
                    {Can create(rectangle X-3 Y-3 X+3 Y+3 fill:red tags:Tag)}
                end}
            end
        end

        DrawTree={MakeDrawTree}
end