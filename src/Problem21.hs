module Problem21 where
import Problem12 (divisors)


main = do print $ sum $ filter amicable [2..9999]


amicable :: Int -> Bool
amicable n = let a = (sum . properDivisors) n
                 b = (sum . properDivisors) a
             in a /= b && b == n


properDivisors :: Int -> [Int]
properDivisors n = filter (/= n) $ divisors n
