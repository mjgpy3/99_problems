module Problem9 where

import Test.Hspec
import Control.Exception

pack [] = []
pack all@(x:_) = takeWhile (== x) all:pack (dropWhile (== x) all)

main :: IO ()
main = hspec $ do
  describe "pack" $ do
    it "[] -> []" $ do
      pack ([] :: [Int]) `shouldBe` []
    it "[42] -> [[42]]" $ do
      pack [42] `shouldBe` [[42]]
    it "[42, 42] -> [[42, 42]]" $ do
      pack [42, 42] `shouldBe` [[42, 42]]
    it "[42, 42, 32] -> [[42, 42], [32]]" $ do
      pack [42, 42, 32] `shouldBe` [[42, 42], [32]]
    it "works for a longer example" $ do
      pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'] `shouldBe` ["aaaa","b","cc","aa","d","eeee"]
