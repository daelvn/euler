--- >>> primes 13195
-- [5,7,13,29]
primes :: Int -> [Int]
primes 1 = []
primes n =
  case factors of
    [] -> [n]
    _  -> factors ++ primes (n `div` head factors)
  where factors = take 1 $ filter (\x -> (n `mod` x) == 0) [2..n-1]

--- >>> problem $ primes 600851475143
problem :: [Int] -> String
problem ns = show $ maximum ns
