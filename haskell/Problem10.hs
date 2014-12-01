module Problem10 where

import Test.Hspec
import Control.Exception
import Problem9 (pack)

encode = map (\x -> (length x, head x)) . pack

main :: IO ()
main = hspec $ do
  describe "encode" $ do
    it "goin' for the gold!" $ do
      encode "aaaabccaadeeee" `shouldBe` [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
