module Problem2 where

import Test.Hspec
import Control.Exception

myButLast (x:y:[]) = x
myButLast (x:xs) = myButLast xs
myButLast _ = error "myButLast called on list with less than 2 elements"

main :: IO ()
main = hspec $ do
  describe "myButLast" $ do
    it "throws an exception for an empty list" $ do
      myButLast [] `shouldThrow` errorCall "myButLast called on list with less than 2 elements"
    it "throws an exception for a single-element list" $ do
      myButLast [] `shouldThrow` errorCall "myButLast called on list with less than 2 elements"
    it "returns the correct element for a 2 element list" $ do
      myButLast [42, 34] `shouldBe` 42
    it "returns the correct element for an n element list" $ do
      myButLast [1..43] `shouldBe` 42
