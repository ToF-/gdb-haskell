module GdbSpec where

import Test.Hspec
import Gdb

spec :: SpecWith ()
spec = do
    describe "complete gossip sharing" $ do
        describe "with only one route" $ do
            it "should be done at minute 1" $do
                let routes = [[42, 17, 23]]
                complete routes `shouldBe` 1
