module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune
    deriving (Eq)

ageOn :: Planet -> Float -> Float
ageOn planet seconds
    | planet == Mercury = seconds / (60*60*24*365.25*0.2408467)
    | planet == Venus   = seconds / (60*60*24*365.25*0.61519726)
    | planet == Earth   = seconds / (60*60*24*365.25)
    | planet == Mars    = seconds / (60*60*24*365.25*1.8808158)
    | planet == Jupiter = seconds / (60*60*24*365.25*11.862615)
    | planet == Saturn  = seconds / (60*60*24*365.25*29.447498)
    | planet == Uranus  = seconds / (60*60*24*365.25*84.016846)
    | planet == Neptune = seconds / (60*60*24*365.25*164.79132)
    | otherwise         = -1
