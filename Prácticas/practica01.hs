import Data.Char

-- [(x,y,z)|x<-[1..10],y<-[1..10],z<-[1..10],z^2 == x^2 + y^2]

-- length filter (<0) [-1000..1000]

-- let func = [x | x <- [1..1000000],mod x 2 == 1]
-- sum(func)

-- let word = "palabra"
-- [y|x<-word,let y = toUpper (x)]

--numero maximo
maxlist [] = error "error"
maxlist [e] = e
maxlist (h:t) = max h (maxlist t)

-- --factorial
-- fact 0 = 1
-- fact x = x * (fact (x-1))

-- --ultimos n numeros de una lista
-- let lastt [e] = length [e]
-- let ultimos n = n
-- ultimos 