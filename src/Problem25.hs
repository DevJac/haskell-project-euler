module Problem25 where


main = print $ fst . head $ dropWhile (\(c, n) -> digitCount n < 1000) $
       zip [1..] fib


digitCount :: Integer -> Int
digitCount = length . show


fib :: [Integer]
fib = 1 : 1 : zipWith (+) fib (tail fib)
