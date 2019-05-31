module RmLastNth
	( rmLastNth
	) where

rmLastNth :: [a] -> Int -> [a]
rmLastNth xs n = firstZipPlusTailRemainder xs (drop (n+1) xs)

firstZipPlusTailRemainder :: [a] -> [a] -> [a]
firstZipPlusTailRemainder [] _ = errorWithoutStackTrace "slow can't be shorter than fast"
firstZipPlusTailRemainder (x:xs) [] = xs
firstZipPlusTailRemainder (x:xs) (_:ys) = x:(firstZipPlusTailRemainder xs ys)
