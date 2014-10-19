module Problem67 where
import Data.Array ((!))
import Problem18 (strToInts, pathScores, triangle)


main = do rawTriangle <- readFile "data/Problem67.txt"
          print $ pathScores (triangle rawTriangle) ! (0, 0)
