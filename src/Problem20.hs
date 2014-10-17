module Problem20 where
import Data.Char (digitToInt)


main = print $ sum $ map digitToInt $ show $ product [2..100]
