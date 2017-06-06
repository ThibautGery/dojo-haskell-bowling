module Main
where
import Test.Hspec
import Bowling

only :: Integer -> [ Integer ]
only num = take 20 (cycle [num] )

main :: IO()
main = hspec $ do
    describe "the score" $ do
        it "should be zero when all gutters" $ do
            score (only 0)  `shouldBe` 0
