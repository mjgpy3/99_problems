module Problem9 where

import Test.Hspec
import Control.Exception

compress (x:y:xs) = if x == y then compress (y:xs) else x:compress (y:xs)
compress xs = xs

main :: IO ()
main = hspec $ do
  describe "compress" $ do
    it "given non-repeating elements, returns the passed list" $ do
      compress [1..5] `shouldBe` [1..5]
    it "given an empty list, return it" $ do
      compress ([] :: [Int]) `shouldBe` []
    it "given an single-element list, return it" $ do
      compress [42] `shouldBe` [42]
    it "given an two-element list, with no repeates, return it" $ do
      compress [42, 35] `shouldBe` [42, 35]
    it "given an two-element list, with repeates, return just the repeated element" $ do
      compress [42, 42] `shouldBe` [42]
    it "works with a long list" $ do
      compress [1, 1, 1, 1, 2, 3, 4, 4, 4, 99] `shouldBe` [1, 2, 3, 4, 99]
