module Problem15 where
import Data.Array


main = let n = 20 in print $ grid n ! (n, n)


grid n = a where
         a = array ((0,0), (n,n)) [((x, y), look (x-1, y) + look (x, y-1))
                                   | x <- [0..n], y <- [0..n]]
         look (0, 0) = 1
         look i@(x, y) | x < 0     = 0
                       | y < 0     = 0
                       | otherwise = a ! i


