module Bowling
where

score :: [Integer] -> Integer
score = score' 10

score' :: Integer -> [Integer] -> Integer
score' 0 _ = 0
score' 1 [x, y] = x + y
score' time (x : y : z : xs)
  | strike = x + y + z + score' (time - 1) (z : y : xs)
  | spare = x + y + z + score' (time - 1) (z : xs)
  | otherwise = x + y + score' (time - 1) (z : xs)
  where
    spare = x + y == 10
    strike = x == 10
