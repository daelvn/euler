import Data.List (nub)
-- products :: [Int] -> [Int] -> []
products :: [Int] -> [Int] -> [Int]
products ns1 ns2 = [ x * y | x <- ns1, y <- ns2 ]

findPalindromes :: [Int] -> [Int]
findPalindromes = nub . filter (\x -> show x == reverse (show x))

-- >>> maximum $ findPalindromes $ products [100..999] [100..999]
-- 906609

