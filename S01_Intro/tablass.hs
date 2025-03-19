module Tablass (Tabla,lkup,upd,del,empty,getKeys) where
-- modulo abstrayendo la implementación

data Tabla a b = T [(a,b)] deriving Show--data o newtype;


lkup :: Eq a => a -> Tabla a b -> Maybe b
lkup k (T l) = lookup k l --lookup del preludio

upd :: a -> b -> Tabla a b -> Tabla a b
upd k v (T l) = T ((k,v):l)

del :: Eq a => a -> Tabla a b -> Tabla a b
del k (T t) = T (filter (\(k',v')-> k' /= k) t)

empty :: Tabla a b
empty = T []

getKeys :: Tabla a b -> [a]
getKeys (T l) = map fst l
