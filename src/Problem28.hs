module Problem28 where


main = print $ sum $ takeWhile (<=1001^2) $ iterate (\n -> n + (ringDelta n)) 1


ringDelta :: Int -> Int
ringDelta n = let n' = floor $ sqrt (fromIntegral n) in
                  if even n'
                  then n'
                  else n' + 1
