
unos :: [Int]
unos = 1: unos


f :: Bool
f case (length unos) of{
		0 -> True;
		S x -> False
}