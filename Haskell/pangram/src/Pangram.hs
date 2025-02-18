module Pangram (isPangram) where

import Data.Char

isPangram :: String -> Bool
isPangram text = all (==True) [x `elem` text || (toUpper x) `elem` text | x <- ['a' .. 'z']]
