module Problem10 where
import Problem3 (primesTo)


main :: IO ()
main = print . sum . primesTo $ 2000000
