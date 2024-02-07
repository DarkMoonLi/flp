module LW4 where

import Data.Function
import Data.List (sortBy)
import qualified Data.Map
import qualified Data.Set

intersperse :: a -> [a] -> [a]
intersperse _ [] = []
intersperse _ [x] = [x]
intersperse sep (x:xs) = x : sep : intersperse sep xs

elems :: Ord key => Data.Map.Map key value -> [value]
elems m
  | Data.Map.null m = []
  | otherwise = map snd (sortBy (compare `on` fst) (Data.Map.toList m))

size :: Data.Set.Set a -> Int
size s
  | Data.Set.null s = 0              
  | otherwise = 1 + size (snd (Data.Set.deleteFindMin s))

isDigit :: Char -> Bool
isDigit c = c >= '0' && c <= '9'

unwords :: [String] -> String
unwords ws = concat (intersperse " " ws)