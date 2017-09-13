-- 1.
minimumDivided = foldr1 lcm [1..20]
-- Resultado = 232,792,560

-- 2.
isDivided x y = (mod x y) == 0
divides x = [y | y<-[1..x],isDivided x y]
isPrime n = length (divides n)<=2
primes = maximum[x | x <-[1..105000],isPrime x]
-- busca los numeros primos en una lista de 1 a n

--3.
palindrome =  maximum [ x*y | x <- [100..999], y <- [100..999], reverse (show (x*y)) == show (x*y)]

-- 4.
data Tree a = EmptyTree | Node a (Tree a)(Tree a) deriving (Show, Read, Eq)

insertTree x EmptyTree = Node x (EmptyTree)(EmptyTree)
insertTree x (Node y left right)
           | x == y = Node x left right
           | x < y  = Node y (insertTree x left) right
           | x > y  = Node y left (insertTree x right)

inorder EmptyTree = [""]
inorder (Node x l r) = (inorder l)++[show x]++(inorder r)