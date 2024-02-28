module Main where

import qualified Lab5

main = do
    putStrLn "Введите начальное значение:"
    initial <- readLn
    putStrLn "Введите количество элементов:"
    num <- readLn
    putStrLn "Введите крастность:"
    factor <- readLn
    let result = Lab5.generateList initial num factor
    putStrLn "Сгенерированный список:"
    print result