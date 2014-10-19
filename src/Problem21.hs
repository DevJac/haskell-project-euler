module Problem21 where
import Problem12 (divisors)


main = do print $ sum $ filter amicable [2..9999]


amicable :: Int -> Bool
amicable n = let a = (sum . lowerDivisors) n
                 b = (sum . lowerDivisors) a
             in a /= b && b == n


lowerDivisors :: Int -> [Int]
lowerDivisors n = filter (/= n) $ divisors n
