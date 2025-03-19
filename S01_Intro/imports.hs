module Imports where
import Tablass

-- a = T [] 
-- no compila, no exporto el constructor T

b = empty
c = upd 2 "hola" b
d = upd 4 "chau" c

e = getKeys d