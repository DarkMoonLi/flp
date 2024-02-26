main :: IO ()
main = do
  putStrLn "Введите начальное число:"
  start <- readLn :: IO Int
  putStrLn "Введите количество чисел:"
  count <- readLn :: IO Int
  putStrLn "Введите шаг:"
  step  <- readLn :: IO Int

  let list = take count $ iterate (+ step) start

  print list