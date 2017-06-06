module Bowling
where

score :: [Integer] -> Integer
score [] = 0
score (x : []) = x
score (x : y : []) = x + y
score (x : y : z : xs)
  | x + y == 10 = x + y + z + score (z : xs)
  | otherwise = x + y + score (z : xs)
