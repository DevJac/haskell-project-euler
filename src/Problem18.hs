{-# LANGUAGE QuasiQuotes #-}
module Problem18 where
import Data.Array (array, (!))
import Text.Regex.TDFA (getAllTextMatches, (=~))
import Text.RawString.QQ (r)
import Problem8 (atLeast)


main = print $ pathScores (triangle rawTriangle) ! (0, 0)


strToInts :: (Read n, Integral n) => String -> [n]
strToInts s = map read $ getAllTextMatches $ s =~ "[0-9]+"


pathScores t = a where
               a = array ((0, 0), (len, len)) [((x,y), m (x, y)) |
                                               y <- [len,len-1..0],
                                               x <- [len,len-1..0]]
               len = (length t) - 1
               m (x, y) | x > y     = 0
                        | y == len  = t !! y !! x
                        | otherwise = (t !! y !! x) +
                                      max (a ! (x,y+1)) (a ! (x+1,y+1))


triangle :: String -> [[Int]]
triangle = dropWhile (not . atLeast 1) . map strToInts . lines


rawTriangle :: String
rawTriangle = [r|
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
|]
