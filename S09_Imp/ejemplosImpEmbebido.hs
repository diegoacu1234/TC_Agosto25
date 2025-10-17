data Prog = Asig [String] [Exp] | Local String Prog deriving (Show) -- este data esta incompleto

data Exp = Cons String [Exp] deriving (Show) -- este data tambien esta incompleto

-- Ejemplos de programas sencillos en Imp puro:

{-
Programa 1. Asignar a la variable "x" el valor True:
   Asig ["x"] [Cons "True" []]
-}

-- Ahora lo embebo en Haskell:
prog1 :: Prog
prog1 = Asig ["x"] [Cons "True" []]

{-
Programa 2. Programa para probar el local
    local y {
      Asig ["y"] [Cons "False" []]
    }
-}

prog2 :: Prog
prog2 = Local "y" (Asig ["y"] [Cons "False" []])

-- Para probar programas mas interesantes, habria que completar el data Prog