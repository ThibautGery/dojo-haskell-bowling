module Main
where
import Test.Hspec
import Bowling

only :: [ Integer] -> [ Integer ]
only num = take 20 (cycle num )

main :: IO()
main = hspec $ do
    describe "the score" $ do
        it "should be zero when all gutters" $ do
            score (only [0])  `shouldBe` 0
        it "should add the throws of an average player" $ do
            score (only [2,3])  `shouldBe` 50
