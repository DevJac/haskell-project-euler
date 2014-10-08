module Problem1 where


main :: IO ()
main = print . sum $ [x | x <- [1..1000-1],
                        x `divisibleBy` 3 || x `divisibleBy` 5]


divisibleBy :: Integral n => n -> n -> Bool
n `divisibleBy` d = n `rem` d == 0
