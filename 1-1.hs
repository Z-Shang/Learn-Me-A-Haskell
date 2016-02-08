--Exercise 1.1
--In GHCI

--Exercise 1.2
--Trivial

--Exercise 1.3
e13 x y z
   |x < y && x < z = (+) (y^2) (z^2)
   |y < z && y < x = (+) (x^2) (z^2)
   |z < y && z < x = (+) (x^2) (y^2)

--Exercise 1.4
--Trivial

--Exercise 1.5
--Applicative-order will evaluate both arguments x y first, and evaluating (p) will lead to endless recursion.

--Exercise 1.6
--Similar to exercise 1.5, the new-if will evaluate both of its arguments and lead to endless recursion.

--Exercise 1.7
average x y = (/) (x + y) 2

improve guess x = average guess (x / guess)

good_enough pre_guess new_guess = abs ((new_guess - pre_guess) / pre_guess) <= 0.001

sqrt_iter pre_guess new_guess x
  |good_enough pre_guess new_guess = new_guess
  |otherwise = sqrt_iter new_guess (improve new_guess x) x

new_sqrt x = sqrt_iter 1 2 x

--Exercise 1.8
c_good_enough guess x = abs ((guess ^ 3 - x) / x) <= 0.001

c_improve guess x = (/) ((x / guess^2) + guess * 2) 3

c_root_iter guess x
  |c_good_enough guess x = guess
  |otherwise = c_root_iter (c_improve guess x) x

c_root x = c_root_iter 1 x
