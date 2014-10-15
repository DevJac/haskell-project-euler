module Problem12 where
import Problem3 (primeFactors)
import Data.List (subsequences, nub)


main = print . fst . head . filter (\(n, l) -> l > 500) . map (\n -> (n, length . divisors $ n)) $ triangleNumbers


divisors :: Int -> [Int]
divisors = nub . map (product . (1:)) . subsequences . primeFactors


triangleNumbers :: [Int]
triangleNumbers = scanl1 (+) [1..]
