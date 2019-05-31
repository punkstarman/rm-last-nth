module RmLastNthSpec(spec) where

import Test.Hspec
import RmLastNth

spec :: Spec
spec = describe "rmLastNth" $ do
	context "given a singleton list" $ do
		it "when removing the last element" $ do
			rmLastNth [1] 0 `shouldBe` []
	context "given a longer list" $ do
		it "when removing the last element" $ do
			rmLastNth [1, 2, 3] 0 `shouldBe` [1, 2]
		it "when removing the second to last element" $ do
			rmLastNth [1, 2, 3] 1 `shouldBe` [1, 3]
