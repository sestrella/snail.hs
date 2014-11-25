module Snail where

snail :: [[Integer]] -> [Integer]
snail []     = []
snail matrix = borders matrix ++ (snail $ submatrix matrix)

borders :: [[Integer]] -> [Integer]
borders matrix = topBorder matrix ++ rightBorder matrix ++ bottomBorder matrix ++ leftBorder matrix

topBorder :: [[Integer]] -> [Integer]
topBorder matrix = head matrix

rightBorder :: [[Integer]] -> [Integer]
rightBorder matrix = map last $ tail matrix

bottomBorder :: [[Integer]] -> [Integer]
bottomBorder matrix = reverse $ init $ last matrix

leftBorder :: [[Integer]] -> [Integer]
leftBorder matrix = reverse $ map head $ tail $ init matrix

submatrix :: [[Integer]] -> [[Integer]]
submatrix matrix = map (tail . init) $ tail $ init matrix
