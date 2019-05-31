module Main where

import System.Environment
import RmLastNth

main :: IO ()
main = do
	args <- getArgs
	input <- getContents
	mapM_ putStrLn (rmLastNth (lines input) (read (args !! 0)))
