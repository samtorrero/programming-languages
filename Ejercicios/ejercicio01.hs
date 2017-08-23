import Data.Char
factorialTail x = ft (x-1) x
	where ft n res
		| n == 0 = res
		| otherwise = ft (n-1) (res*n)

--Lista al reverso
reverso (h:t) = rev (t) ([h])
	where rev (p:s) (hr)
		| s == [] = p:hr
		| otherwise = rev (s) (p:hr)

--Lista al reverso alterna
revalt l = rev l []
	where rev (x:xs) b
		| xs == [] = [x]++b
		| otherwise = rev (xs) ([x]++b)

--Numero maximo y minimo
maxmin x = maxim (tail x) (head x) (head x)
	where maxim x maxx minn
		| x == [] = (maxx,minn)
		| (head x) > maxx = maxim(tail x) (head x) minn
		| (head x) < minn = maxim (tail x) maxx (head x)
		| otherwise = maxim (tail x) maxx minn

