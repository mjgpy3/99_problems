module Problem20 where

import Test.Hspec

removeAt = aux []
  where aux acc n (x:xs) = if n == 1 then (x, reverse acc ++ xs) else aux (x:acc) (n - 1) xs

main :: IO ()
main = hspec $ do
  describe "removeAt" $ do
    it "works for the given example" $ do
      removeAt 2 "abcd" `shouldBe` ('b', "acd")
