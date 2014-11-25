module Main where

import Snail
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Snail.snail" $ do
    it "returns the driven path" $ do
      snail matrix `shouldBe` [1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10]
      where
        matrix = [ [1,  2,  3,  4]
                 , [5,  6,  7,  8]
                 , [9,  10, 11, 12]
                 , [13, 14, 15, 16]
                 ]
