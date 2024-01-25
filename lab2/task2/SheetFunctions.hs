module SheetFunctions where

insert :: [v] -> v -> Int -> [v]
insert xs v n 
  | n > -1 && n < length (xs) = take n xs ++ v : drop n xs
  | n == 0 = v : xs
  | n == length (xs) - 1 = xs ++ [v]
  | null xs || n >= length (xs) = xs