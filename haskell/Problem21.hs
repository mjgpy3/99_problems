module Problem21 where

import Test.Hspec

insertAt x xs 1 = x:xs
insertAt x (y:ys) i = y:insertAt x ys (i - 1)

main :: IO ()
main = hspec $ do
  describe "insertAt" $ do
    it "works for the given example" $ do
      insertAt 'X' "abcd" 2 `shouldBe` "aXbcd"
