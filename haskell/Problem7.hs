module Problem7 where

import Test.Hspec
import Control.Exception

data NestedList a = Elem a | List [NestedList a]

flatten x = case x of
  Elem a -> [a]
  List xs -> foldl (\x y -> x ++ flatten y) [] xs

main :: IO ()
main = hspec $ do
  describe "flatten" $ do
    it "returns back a single-element list given an Elem ..." $ do
      flatten (Elem 42) `shouldBe` [42]
    it "returns an empty list given an empty list" $ do
      flatten (List ([]::[NestedList Int])) `shouldBe` []
    it "returns an singular list given an list of one Elem list" $ do
      flatten (List [Elem 42]) `shouldBe` [42]
    it "returns an 2 element, given 2" $ do
      flatten (List [Elem 42, Elem 36]) `shouldBe` [42, 36]
    it "unnests lists" $ do
      flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) `shouldBe` [1, 2, 3, 4, 5]
