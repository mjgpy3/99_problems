module Problem11 where

import Test.Hspec
import Control.Exception
import Problem10 (encode)

data MaybeSingular a = Multiple Int a | Single a deriving (Show, Eq)

encodeModified = aux.encode
  where aux [] = []
        aux (x:xs) = (case x of
          (1, e) -> Single e
          (n, e) -> Multiple n e):aux xs

main :: IO ()
main = hspec $ do
  describe "encodeModified" $ do
    it "goin' for the gold!" $ do
      encodeModified "aaaabccaadeeee" `shouldBe` [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
