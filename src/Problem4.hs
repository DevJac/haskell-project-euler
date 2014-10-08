module Problem4 where


main :: IO ()
main = print . maximum $ [x*y | x <- [999,998..1],
                                y <- [x,x-1..1],
                                palidrome . digitsRev $ x*y]


digits :: Integral n => n -> [n]
digits = reverse . digitsRev


digitsRev :: Integral n => n -> [n]
digitsRev 0 = []
digitsRev n = n `rem` 10 : digitsRev (n `div` 10)


palidrome :: (Eq a) => [a] -> Bool
palidrome a = reverse a == a
