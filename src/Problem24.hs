module Problem24 where
import Data.List (splitAt, genericLength, genericIndex)


main = print $ nthPermutation 999999 ['0'..'9']


nthPermutation :: (Integral n) => n -> [a] -> [a]
nthPermutation n xs | n > factorial (genericLength xs) = error "Invalid permutation index."
nthPermutation _ [] = []
nthPermutation n xs = a : nthPermutation r (dropIndex (fromIntegral i) xs)
                      where
                          otherPermsCount = factorial $ genericLength xs - 1
                          i = n `div` otherPermsCount
                          r = n `rem` otherPermsCount
                          a = xs `genericIndex` i



dropIndex :: Int -> [a] -> [a]
dropIndex n xs = let (a, b) = splitAt n xs in a ++ (drop 1 b)


factorial :: (Integral n) => n -> n
factorial n = product [2..n]
