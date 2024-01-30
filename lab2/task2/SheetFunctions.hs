module SheetFunctions where

insert :: [v] -> v -> Int -> [v]
insert xs v n
  | n > -1 && n < length (xs) = take n xs ++ v : drop n xs
  | n == 0 = v : xs
  | n == length (xs) - 1 = xs ++ [v]
  | n < 0 || n >= length (xs) = error "Индекс вышел за рамки списка"