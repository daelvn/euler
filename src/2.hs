fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

--- >>> problem fibs
-- "4613732"
problem :: [Int] -> String
problem ns = show $ sum $ filter even $ takeWhile (<= 4000000) ns
