module Problem2 where
import Problem1 (divisibleBy)


main :: IO ()
main = print $ sum $ filter isEven $ takeWhile (< 4000000) fib


fib :: Integral n => [n]
fib = 1 : 2 : zipWith (+) fib (tail fib)


isEven :: Integral n => n -> Bool
isEven = (`divisibleBy` 2)


isOdd :: Integral n => n -> Bool
isOdd = not . isEven
