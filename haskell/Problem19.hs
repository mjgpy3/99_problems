module Problem19 where

import Test.Hspec

rotate xs n = drop v xs ++ take v xs
  where v = if n >= 0 then n else length xs + n

main :: IO ()
main = hspec $ do
  describe "rotate" $ do
    it "works for example 1" $ do
      rotate ['a','b','c','d','e','f','g','h'] 3 `shouldBe` "defghabc"
    it "works for example 2" $ do
      rotate ['a','b','c','d','e','f','g','h'] (-2) `shouldBe` "ghabcdef"
