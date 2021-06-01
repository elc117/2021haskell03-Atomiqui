-- Alisson Costa Schmidt

--1
add10toall :: [Int] -> [Int]
add10toall lst = [x + 10 | x <- lst]

--2
multN :: Int -> [Int] -> [Int]
multN n lst = [x * n | x <- lst]

--3
multN' :: Int -> [Int] -> [Int]
multN' n lst = map (\ x -> x*n)lst

--4
applyExpr :: [Int] -> [Int]
applyExpr lst = [3*x+2 | x <- lst]

--5
applyExpr' :: [Int] -> [Int]
applyExpr' lst = map (\ x -> 3*x+2)lst

--6
addSuffix :: String -> [String] -> [String]
addSuffix suf lst = [x++suf | x <- lst]

--7
selectgt5 :: [Int] -> [Int]
selectgt5 lst = [x | x <- lst, x > 5]

--8
sumOdds :: [Int] -> Int
sumOdds lst = sum([x | x <- lst, odd(x)])

--9
sumOdds' :: [Int] -> Int
sumOdds' lst = sum(filter odd lst)

--10
selectExpr :: [Int] -> [Int]
selectExpr lst = [x | x <- lst, x > 20, x < 50, mod x 2 == 0]

--11
conta:: [t] -> Int
conta [] = 0
conta (a:x) = 1 + conta x

countShorts :: [String] -> Int--Int
countShorts lst = conta [x | x <- lst, length x < 5]

--12
calcExpr :: [Float] -> [Float]
calcExpr lst = [x | x <- lst, x^2/2 > 10]

--13
trSpaces :: String -> String
trSpaces str = [if x == ' ' then '_' else x | x <- str]

--14
selectSnd :: [(Int,Int)] -> [Int]
selectSnd lst = [y | (_,y) <- lst]

--15
dotProd :: [Int] -> [Int] -> Int
dotProd lst1 lst2 = sum [x*y | (x,y) <- (zip lst1 lst2)]