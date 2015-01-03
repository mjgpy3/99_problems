module Problem16 where

import Test.Hspec

dropEvery xs 0 = xs
dropEvery xs n = map fst $ filter (\p -> (/= 0) $ (snd p) `mod` n) $ zip xs [1..]

main :: IO ()
main = hspec $ do
  describe "dropEvery" $ do
    it "is an empty list, for an empty list" $ do
      dropEvery ([] :: [Int]) 4 `shouldBe` []
    it "is an empty list, for a one-element list from which one is being dropped" $ do
      dropEvery [42] 1 `shouldBe` []
    it "is an empty list, for an n-element list from which every one is being dropped" $ do
      dropEvery [42, 9, 32, 99] 1 `shouldBe` []
    it "is a one-element list, for an one-element list from which every second is being dropped" $ do
      dropEvery [42] 2 `shouldBe` [42]
    it "is a one-element list, for a two-element list from which every second is being dropped" $ do
      dropEvery [42, 35] 2 `shouldBe` [42]
    it "is a two-element list, for a three-element list from which every second is being dropped" $ do
      dropEvery [42, 35, 99] 2 `shouldBe` [42, 99]
    it "is the original list when told to drop every 0" $ do
      dropEvery [1..4] 0 `shouldBe` [1..4]
    it "works for the given case" $ do
      dropEvery "abcdefghik" 3 `shouldBe` "abdeghk"
