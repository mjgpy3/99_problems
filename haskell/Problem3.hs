module Problem3 where

import Test.Hspec
import Control.Exception

elementAt (x:_) 1 = x
elementAt (x:xs) n
  | n < 1     = error "elementAt called with non-positive index"
  | otherwise = elementAt xs (n - 1)
elementAt _ _ = error "elementAt index exceeds list length"

main :: IO ()
main = hspec $ do
  describe "elementAt" $ do
    it "throws an exception for an empty list, and any index" $ do
      elementAt [] 9 `shouldThrow` errorCall "elementAt index exceeds list length"
    it "returns the first element, given a single-element list and 1" $ do
      elementAt [42] 1 `shouldBe` 42
    it "returns the second element, given a 2-element list and 2" $ do
      elementAt "Hi" 2 `shouldBe` 'i'
    it "throws an exception, given a list and a k that is longer than the list" $ do
      evaluate (elementAt [1..19] 99) `shouldThrow` errorCall "elementAt index exceeds list length"
    it "throws an excepton, given a negative index" $ do
      evaluate (elementAt [1..19] (-1)) `shouldThrow` errorCall "elementAt called with non-positive index"
