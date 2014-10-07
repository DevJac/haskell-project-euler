module Problem3 where
import Data.Maybe (maybe)
import Data.List (find)
import Problem1 (divisibleBy)


main :: IO ()
main = print $ maximum $ primeFactors 600851475143


primeFactors :: Integral n => n -> [n]
primeFactors 1 = []
primeFactors n = let p = leastPrimeFactor n in p : primeFactors (n `div` p)


leastPrimeFactor :: Integral n => n -> n
leastPrimeFactor n = maybe n id $ find (\p -> n `divisibleBy` p) (possiblePrimeFactors n)


isPrime :: Integral n => n -> Bool
isPrime n = all (\p -> not $ n `divisibleBy` p) (possiblePrimeFactors n)


primes :: Integral n => [n]
primes = 2 : filter isPrime [3,5..]


possiblePrimeFactors :: Integral n => n -> [n]
possiblePrimeFactors n = takeWhile (\p -> p*p <= n) primes
