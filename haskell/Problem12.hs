module Problem12 where

import Test.Hspec
import Control.Exception

data MaybeSingular a = Multiple Int a | Single a deriving (Show, Eq)

decodeModified = concat.(map aux)
  where aux (Single x) = [x]
        aux (Multiple n x) = take n (repeat x)

main :: IO ()
main = hspec $ do
  describe "decodeModified" $ do
    it "goin' for the gold!" $ do
      decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e'] `shouldBe` "aaaabccaadeeee"
