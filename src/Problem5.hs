module Problem5 where
import Data.List (foldl1')


main :: IO ()
main = print $ foldl1' lcm [1..20]
