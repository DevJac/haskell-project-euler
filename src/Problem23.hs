module Problem23 where
import Data.Set (Set, fromList, toList, member)
import Problem21 (properDivisors)


main = print $ sum $ filter (not . sumOfTwoAbundants) [1..28123]


sumOfTwoAbundants :: Int -> Bool
sumOfTwoAbundants n = any
                      (\abund -> (n - abund) `member` abundants) $
                      takeWhile (<= 28123 `div` 2) $ toList abundants


abundants :: Set Int
abundants = fromList $ filter abundant [1..28123]


abundant :: Int -> Bool
abundant n = (sum . properDivisors $ n) > n
