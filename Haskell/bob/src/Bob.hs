module Bob (responseFor) where

import Data.Char (isSpace, isUpper)
import Data.Text (stripEnd)
responseFor :: String -> String
responseFor xs
    | null xs || silence = "Fine. Be that way!"
    | question && allcaps = "Calm down, I know what I'm doing!"
    | question = "Sure."
    | allcaps = "Whoa, chill out!"
    | otherwise = "Whatever."
    where
        question = stripEnd xs
        allcaps  = (all (isUpper) filtered) && not (null filtered)
        filtered = filter (`elem` ['a'..'z'] ++ ['A'..'Z']) xs
        silence  = all (isSpace) xs
