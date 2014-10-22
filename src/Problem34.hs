module Problem34 where
import Problem30 (digits)


main = print $ sum $ [n | n <- [10..999999], n == (sum . map factorial . digits $ n)]


factorial n = product [2..n]
