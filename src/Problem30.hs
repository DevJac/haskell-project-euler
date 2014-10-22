module Problem30 where


main = print $ sum $ [n | n <- [10..9^5*6],
                          n == (sum . map (^5) . digits $ n)]


digits :: (Integral n) => n -> [Int]
digits = reverse . digits'
    where
    digits' :: (Integral n) => n -> [Int]
    digits' 0 = []
    digits' n = let n' = fromIntegral n in n' `rem` 10 : digits' (n' `div` 10)
