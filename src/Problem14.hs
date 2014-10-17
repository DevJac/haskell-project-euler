module Problem14 where
import Data.List (maximumBy)
import Data.Function (on)


main = do print $ maximumBy (compare `on` snd) $ map (\n -> (n, length . collatz $ n)) [1..999999]


collatz :: Int -> [Int]
collatz 1 = [1]
collatz n | even n = n : collatz (n `div` 2)
          | odd n  = n : collatz (3*n + 1)
