module Problem8 where
import Data.List (maximumBy)
import Data.Char (digitToInt)
import Text.Regex.TDFA ((=~), getAllTextMatches)


main :: IO ()
main = do fileContents <- readFile "data/Problem8.txt"
          print . maximum . map digitsProduct . groupsOf 13 $ stripNonDigits fileContents
              where digitsProduct = product . map digitToInt


stripNonDigits :: String -> String
stripNonDigits s = concat . getAllTextMatches $ s =~ "[0-9]+"


groupsOf :: Int -> [a] -> [[a]]
groupsOf n xs | atLeast n xs = take n xs : groupsOf n (tail xs)
              | otherwise    = []


atLeast :: Int -> [a] -> Bool
atLeast 0 _ = True
atLeast _ [] = False
atLeast n (_:xs) = atLeast (n-1) xs
