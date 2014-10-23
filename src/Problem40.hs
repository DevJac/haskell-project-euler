module Problem40 where
import Problem30 (digits)


main = print $ product $ map digit [10^x | x <- [0..6]]


digit :: Int -> Int
digit n = digit' n 1
    where
        len :: Int -> Int
        len n = length $ digits n
        digit' :: Int -> Int -> Int
        digit' n m | n <= (len m) = digits m !! (n-1)
                   | otherwise    = digit' (n - len m) (m+1)
