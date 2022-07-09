module GdbSpec where

import Test.Hspec

spec :: SpecWith ()
spec = do
    describe "dummy" $ do
        it "should show the presence of a test harness" $ do
            2+2 `shouldBe` 4
