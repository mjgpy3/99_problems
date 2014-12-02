module Problem15 where

import Test.Hspec
import Control.Exception

repli xs n = concat $ map (take n.repeat) xs

main :: IO ()
main = hspec $ do
  describe "repli" $ do
    it "goin' for the gold" $ do
      repli "abc" 5 `shouldBe` "aaaaabbbbbccccc"
