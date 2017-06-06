module Bowling
where

score :: [Integer] -> Integer
score (x : y : z : xs)
  | x + y == 10 = x + y + z + score (z : xs)
  | otherwise = x + y + score (z : xs)
score list = sum list
