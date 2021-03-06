module GdbSpec where

import Test.Hspec
import Gdb

spec :: SpecWith ()
spec = do
    describe "complete gossip sharing" $ do

        describe "with only one route" $ do
            it "should be done at minute 1" $do
                let routes = [[42, 17, 23]]
                complete routes `shouldBe` "1"

        describe "with two routes" $ do
            describe "with no common stop at all" $ do
                it "should be never done" $ do
                    let routes = [[42]
                                 ,[17]]
                    complete routes `shouldBe` "never"

            describe "with a common stop after a while" $ do
                it "should be at first minute of meeting" $ do
                    let routes = [[42,23,12]
                                 ,[17,42]]
                    complete routes `shouldBe` "4"
                    let routes = [[23,17]
                                 ,[42,17]]
                    complete routes `shouldBe` "2"


