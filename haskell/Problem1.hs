module Problem1 where

import Test.Hspec
import Control.Exception

myLast [x] = x
myLast (x:xs) = myLast xs
myLast _ = error "myLast called on empty list"

main :: IO ()
main = hspec $ do
  describe "myLast" $ do
    it "returns the only element in a 1 element list" $ do
      myLast [42] `shouldBe` 42
    it "returns the last element in a 2 element list" $ do
      myLast [99, 42] `shouldBe` 42
    it "returns the last element in an n element list" $ do
      myLast [1..42] `shouldBe` 42
    it "throws an exception for an empty list" $ do
      myLast [] `shouldThrow` errorCall "myLast called on empty list"
