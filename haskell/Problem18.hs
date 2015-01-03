module Problem18 where

import Test.Hspec

slice xs s e = take (e - s + 1) $ drop (s - 1) xs

main :: IO ()
main = hspec $ do
  describe "dropEvery" $ do
    it "goin' for the gold" $ do
      slice ['a','b','c','d','e','f','g','h','i','k'] 3 7 `shouldBe` "cdefg"
