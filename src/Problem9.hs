module Problem9 where


main :: IO ()
main = print $ head [a*b*(1000 - a - b) |
                        b <- [1..499],
                        a <- [1..b-1],
                        a^2 + b^2 == (1000 - a - b)^2]
