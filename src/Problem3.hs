module Problem3 where
import Data.Maybe (maybe)
import Data.List (find)
import Data.List.Ordered (minus)
import Problem1 (divisibleBy)


main :: IO ()
main = print . maximum . primeFactors $ 600851475143


primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = let p = leastPrimeFactor n in p : primeFactors (n `div` p)


leastPrimeFactor :: Int -> Int
leastPrimeFactor n = maybe n id $
                     find (\p -> n `divisibleBy` p) (possiblePrimeFactors n)


isPrime :: Int -> Bool
isPrime n = all (\p -> not $ n `divisibleBy` p) $ possiblePrimeFactors n


primes :: [Int]
primes = 2 : 3 : filter isPrime [5,7..]


possiblePrimeFactors :: Int -> [Int]
possiblePrimeFactors = primesTo . ceiling . sqrt . fromIntegral


primesTo :: Int -> [Int]
primesTo n = 2 : sieve [3,5..n]
    where
        sieve [] = []
        sieve (p:xs) = p : sieve (xs `minus` [p^2, p^2+p..n])
