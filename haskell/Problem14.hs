module Problem14 where

import Test.Hspec
import Control.Exception

dupli = concat.(map $ take 2.repeat)

main :: IO ()
main = hspec $ do
  describe "dupli" $ do
    it "returns an empty list, given an empty list" $ do
      dupli [] `shouldBe` ([] :: [Int])
    it "returns [42, 42], given [42]" $ do
      dupli [42] `shouldBe` [42, 42]
    it "returns [42, 42, 99, 99], given [42, 99]" $ do
      dupli [42, 99] `shouldBe` [42, 42, 99, 99]
    it "works for 3 elements" $ do
      dupli [1, 2, 3] `shouldBe` [1,1,2,2,3,3]
