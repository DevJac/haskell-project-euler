module Problem36 where


main = print $ sum $ filter (\n -> (palidrome . show $ n) && (palidrome . toBinary $ n)) [1..999999]


palidrome :: String -> Bool
palidrome s = reverse s == s


toBinary :: (Integral n) => n -> String
toBinary n = binarySub (2^(floor . log2 . fromIntegral $ n)) n
    where
        log2 n = log n / log 2
        binarySub :: (Integral n) => n -> n -> String
        binarySub 1  1 = "1"
        binarySub 1  0 = "0"
        binarySub p2 r | r - p2 >= 0 = '1' : binarySub (p2 `div` 2) (r - p2)
                       | otherwise   = '0' : binarySub (p2 `div` 2) r
