module Problem6 where

import Test.Hspec
import Control.Exception
import Problem5 (myReverse)

isPalindrome xs = myReverse xs == xs

main :: IO ()
main = hspec $ do
  describe "isPalindrome" $ do
    it "returns true for the empty list" $ do
      isPalindrome ([]::[Int]) `shouldBe` True
    it "returns true for a one-element list" $ do
      isPalindrome [42] `shouldBe` True
    it "returns false for foo" $ do
      isPalindrome "foo" `shouldBe` False
    it "returns true for racecar" $ do
      isPalindrome "racecar" `shouldBe` True
