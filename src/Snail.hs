module Snail where

type Matrix = [[Integer]]

snail :: Matrix -> [Integer]
snail []     = []
snail matrix = borders matrix ++ (snail $ submatrix matrix)

borders :: Matrix -> [Integer]
borders matrix = topBorder matrix ++ rightBorder matrix ++ bottomBorder matrix ++ leftBorder matrix

topBorder :: Matrix -> [Integer]
topBorder matrix = head matrix

rightBorder :: Matrix -> [Integer]
rightBorder matrix = map last $ tail matrix

bottomBorder :: Matrix -> [Integer]
bottomBorder matrix = reverse $ init $ last matrix

leftBorder :: Matrix -> [Integer]
leftBorder matrix = reverse $ map head $ tail $ init matrix

submatrix :: Matrix -> Matrix
submatrix matrix = map (tail . init) $ tail $ init matrix
