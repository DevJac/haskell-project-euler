module Problem48 where


main = print $ reverse . take 10 . reverse . show $ sum [n^n | n <- [1..1000]]
