module Clase2 where

data AB a = H a | N (AB a) a (AB a) deriving Show

elemm :: Eq a => AB a -> a -> Bool
elemm (H x) d = x == d
elemm (N i x d) e = (x == e) || (elemm i e) || (elemm d e)

data AB1 a = H1 a | N1 (AB1 a) a (AB1 a) deriving (Show,Eq,Ord)
