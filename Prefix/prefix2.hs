--This function passes 2 elements at a time onto the getterPrefix function

prefixHask :: [String] -> String

prefixHask [] = []
prefixHask x = foldl1 getterPrefix x

--Compares 2 elements at a time and gets the longest common prefix

getterPrefix :: String -> String -> String

getterPrefix x [] = []
getterPrefix [] x = []
getterPrefix (x:xs) (y:ys)
    |x == y = x : getterPrefix xs ys
    |otherwise = []