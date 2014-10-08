module Problem7 where
import Problem3 (primes)


main :: IO ()
main = print $ primes !! (10001-1)
