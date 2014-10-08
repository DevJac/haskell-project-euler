module Problem6 where


main :: IO ()
main = print $ squareSums [1..100] - sumSquares [1..100]


squareSums :: Integral n => [n] -> n
squareSums xs = (sum xs) ^ 2


sumSquares :: Integral n => [n] -> n
sumSquares xs = sum $ map (^2) xs
