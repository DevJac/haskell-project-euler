module Problem26 where
import qualified Data.Map as Map
import Data.Ord (comparing)
import Data.List (elemIndex, maximumBy)
import Data.Maybe (isNothing, fromJust)


main = print $ maximumBy (comparing snd) [(d, cycleLength 1 d) | d <- [1..999]]


makeGreaterThan :: Int -> Int -> Int
makeGreaterThan n m | n <= m     = m
                    | otherwise  = makeGreaterThan n (m*10)


cycleLength :: Int -> Int -> Int
cycleLength n d = cycleLength' [] $ takeWhile (/= 0) $ iterate (\n -> (makeGreaterThan d n) `rem` d) n
    where
        cycleLength' :: [Int] -> [Int] -> Int
        cycleLength' seen []                   = 0
        cycleLength' seen (x:xs) | isNothing e = cycleLength' (x:seen) xs
                                 | otherwise   = (fromJust e) + 1
                                 where
                                    e = x `elemIndex` seen
