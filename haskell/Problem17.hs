module Problem17 where

import Test.Hspec

split xs n = (take n xs, drop n xs)

main :: IO ()
main = hspec $ do
  describe "split" $ do
    it "returns an empty list, and the rest of the list when a value of 0 is given" $ do
      split [1..42] 0 `shouldBe` ([] :: [Int], [1..42])
    it "splits to a single element list and the rest when one is given" $ do
      split [1..42] 1 `shouldBe` ([1], [2..42])
    it "works for the given case" $ do
      split "abcdefghik" 3 `shouldBe` ("abc", "defghik")
