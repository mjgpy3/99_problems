module Problem22 where

import Test.Hspec

range b e = [b..e]

main :: IO ()
main = hspec $ do
  describe "range" $ do
    it "works" $ do
      range 4 9 `shouldBe` [4..9]
