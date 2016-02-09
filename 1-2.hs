--Exercise 1.9
--Former is recursive, latter is iterative.

--Exercise 1.10
--Trivial
--The Ack Function is:
ack _ 0 = 0
ack 0 y = y * 2
ack _ 1 = 2
ack x y = ack (x - 1) (ack x (y - 1))

--Exercise 1.11
f_rec n
  |n < 3 = n
  |otherwise = f_rec(n - 1) + f_rec(n - 2) * 2 + f_rec(n-3) * 3
--TODO: Iterative Version

--Exercise 1.12
pascal :: (Integral a, Eq a) => a -> [a]
pascal x
  |x == 1 = [1]
  |x == 2 = [1, 1]
  |otherwise = [1] ++ sum_pre(x - 1) ++ [1] where
    sum_pre 1 = []
    sum_pre 2 = [2]
    sum_pre n = gen_lst(pascal(n))
    gen_lst (x:[]) = []
    gen_lst (x:xs) = [x + head(xs)] ++ gen_lst(xs)

--Exercise 1.13
phi :: Double -> Double
phi n = ((1 + sqrt(5)) / 2) ** n

psi :: Double -> Double
psi n = ((1 - sqrt(5)) / 2) ** n

fib :: Double -> Double
fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)

ex113 n = abs(fib(n) - (((phi n) - (psi n)) / sqrt(5))) < 1
