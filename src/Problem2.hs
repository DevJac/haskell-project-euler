module Problem2 where
import Problem1 (divisibleBy)


main :: IO ()
main = print . sum . filter even $ takeWhile (< 4000000) fib


fib :: Integral n => [n]
fib = 1 : 2 : zipWith (+) fib (tail fib)
