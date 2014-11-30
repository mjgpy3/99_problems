module Problem4 where

import Test.Hspec
import Control.Exception

myLength [] = 0
myLength (_:xs) = 1 + myLength xs

main :: IO ()
main = hspec $ do
  describe "myLength" $ do
    it "returns 0 for an empty list" $ do
      myLength [] `shouldBe` 0
    it "returns 1 for a single-element list" $ do
      myLength [42] `shouldBe` 1
    it "returns n for a n-element list" $ do
      myLength [1..42] `shouldBe` 42
