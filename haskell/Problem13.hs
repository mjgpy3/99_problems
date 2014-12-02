module Problem13 where

import Test.Hspec
import Control.Exception

data MaybeSingular a = Multiple Int a | Single a deriving (Show, Eq)

encodeDirect [] = []
encodeDirect (x:xs) = aux (Single x) xs
  where aux current [] = current:[]
        aux c (y:ys) = case ((val c) == y, c) of
          (False, orig) -> orig:aux (Single y) ys
          (_, Single x) -> aux (Multiple 2 x) ys
          (_, Multiple n x) -> aux (Multiple (n + 1) x) ys
        val (Single x) = x
        val (Multiple _ x) = x

main :: IO ()
main = hspec $ do
  describe "encodeDirect" $ do
    it "goin' for the gold!" $ do
      encodeDirect "aaaabccaadeeee" `shouldBe` [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
