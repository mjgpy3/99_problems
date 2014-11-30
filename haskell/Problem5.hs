module Problem5 where

import Test.Hspec
import Control.Exception

myReverse xs = aux xs []
  where aux (x:xs) acc = aux xs (x:acc)
        aux _ acc = acc

main :: IO ()
main = hspec $ do
  describe "myReverse" $ do
    it "returns an empty list for an empty list" $ do
      myReverse ([] :: [Int]) `shouldBe` []
    it "returns a single-element list given that list" $ do
      myReverse [42] `shouldBe` [42]
    it "reverses a two element list" $ do
      myReverse [42, 36] `shouldBe` [36, 42]
    it "reverses a three element list" $ do
      myReverse [42, 36, 2] `shouldBe` [2, 36, 42]
    it "reverses a long list" $ do
      myReverse [1, 2, 3, 4, 5] `shouldBe` [5, 4, 3, 2, 1]
