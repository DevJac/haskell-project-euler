module Problem17 where
import Data.Char (isSpace)


main = print $ sum $ map (length . filter (not . isSpace) . spellIt) [1..1000]


spellIt :: Int -> String
spellIt 1000 = "one thousand"
spellIt n | n >= 100 = spellIt (n `div` 100) ++ " hundred" ++ sep " and " (spellIt (n `rem` 100))
          | n >= 90  = "ninety" ++ sep " " (spellIt (n `rem` 90))
          | n >= 80  = "eighty" ++ sep " " (spellIt (n `rem` 80))
          | n >= 70  = "seventy" ++  sep " " (spellIt (n `rem` 70))
          | n >= 60  = "sixty" ++ sep " " (spellIt (n `rem` 60))
          | n >= 50  = "fifty" ++ sep " " (spellIt (n `rem` 50))
          | n >= 40  = "forty" ++ sep " " (spellIt (n `rem` 40))
          | n >= 30  = "thirty" ++ sep " " (spellIt (n `rem` 30))
          | n >= 20  = "twenty" ++ sep " " (spellIt (n `rem` 20))
          where
              sep a "" = ""
              sep a b = a ++ b
spellIt 19 = "nineteen"
spellIt 18 = "eighteen"
spellIt 17 = "seventeen"
spellIt 16 = "sixteen"
spellIt 15 = "fifteen"
spellIt 14 = "fourteen"
spellIt 13 = "thirteen"
spellIt 12 = "twelve"
spellIt 11 = "eleven"
spellIt 10 = "ten"
spellIt 9 = "nine"
spellIt 8 = "eight"
spellIt 7 = "seven"
spellIt 6 = "six"
spellIt 5 = "five"
spellIt 4 = "four"
spellIt 3 = "three"
spellIt 2 = "two"
spellIt 1 = "one"
spellIt 0 = ""
