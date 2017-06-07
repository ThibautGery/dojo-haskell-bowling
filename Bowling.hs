module Bowling
where

score :: [Integer] -> Integer
score (x : y : z : xs)
  | strike = x + y + z + score (z : y : xs)
  | spare = x + y + z + score (z : xs)
  | otherwise = x + y + score (z : xs)
  where
    spare = x + y == 10
    strike = x == 10
score list = sum list
