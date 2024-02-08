1)
Название: intersperse  
Тип: a -> [a] -> [a]  
Описание: вставляет разделитель между элементами своего аргумента list  
Примеры:  
1)   
intersperse ' ' "Hello"  
Результат: "H e l l o"  
2)  
intersperse intersperse 1 [3]  
Результат: [3]  
3)  
intersperse 1 []  
Результат: []  

Реализация:   
```
intersperse :: a -> [a] -> [a]
intersperse _ [] = []
intersperse _ [x] = [x]
intersperse sep (x:xs) = x : sep : intersperse sep xs
```
---
2)
Название: elems  
Тип: Ord key => Data.Map.Map key value -> [value]  
Описание: Возвращает все элементы карты в порядке возрастания их ключей.  
Примеры:  
1)   
elems (Data.Map.fromList [(3,"A"),(5,"B"),(1,"D"),(0,"QQQ")])  
Результат: ["QQQ","D","A","B"]  
2)  
elems (Data.Map.empty :: Data.Map.Map String String)  
Результат: []  
3)  
elems (Data.Map.fromList [(3,"A")])  
Результат: ["A"]  

Реализация:   
```
elems :: Ord key => Data.Map.Map key value -> [value]
elems m
  | Data.Map.null m = []
  | otherwise = map snd (sortBy (compare `on` fst) (Data.Map.toList m))
```
---
3)
Название: size  
Тип: Data.Set.Set a -> Int  
Описание: Количество элементов в наборе.  
Примеры:  
1)   
size (Data.Set.fromList [1..10])  
Результат: 10  
2)  
size (Data.Set.fromList [10])  
Результат: 1  
3)  
size (Data.Set.empty :: Data.Set.Set Int)  
Результат: 0

Реализация:   
```
size :: Data.Set.Set a -> Int
size s
  | Data.Set.null s = 0              
  | otherwise = 1 + size (snd (Data.Set.deleteFindMin s))
```
---
4)  
Название: isDigit  
Тип: Char -> Bool  
Описание: True, если символ является десятичным числовым символом (0..9)  
Примеры:  
1)   
isDigit '9'  
Результат: True  
2)  
isDigit '-'  
Результат: False  
3)  
isDigit 'f'  
Результат: False

Реализация:   
```
isDigit :: Char -> Bool
isDigit c = c >= '0' && c <= '9'
```
---
5)  
Название: unwords  
Тип: [String] -> String  
Описание: создает строку из массива строк, вставляет пробелы между исходными строками  
Примеры:  
1)   
unwords ["aa", "bb", "cc", "dd", "ee"]  
Результат: "aa bb cc dd ee"  
2)  
unwords ["aa"]  
Результат: "aa"  
3)  
unwords []  
Результат: ""

Реализация:   
```
unwords :: [String] -> String
unwords ws = concat (intersperse " " ws)
```
