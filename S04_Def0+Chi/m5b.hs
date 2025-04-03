data Exp = Var X
         | Cons K [Exp]
         | Lam X Exp
         | App Exp Exp
         | Case Exp [Br]
         | Rec X Exp 
         deriving (Show)

type X = String
type K = String

--opcion1:
--data Br = B K [X] Exp

--opcion2:
--type Br = (K,[X], Exp)

--opcion3:
type Br = (K,([X], Exp))

data W = LamW X Exp
       | ConsW K [Exp]
       deriving Show

type Sigma = [(X,Exp)]

bajas :: Sigma -> [X] -> Sigma
bajas = undefined

efecto :: Sigma -> Exp -> Exp
efecto = undefined -- el resto uds...
efecto s (App e1 e2) = App (efecto s e1) (efecto s e2)
efecto s (Rec x e) = Rec x (efecto (bajas s [x]) e)

evalW :: Exp -> W

evalW (Cons x eTecho) = ConsW x eTecho
evalW ...




