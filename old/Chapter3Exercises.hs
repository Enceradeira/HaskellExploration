import Data.List

{- exercise 1+2 -}

length :: [a] -> Int
length []		= 0
length (x:xs)	= 1 + (Prelude.length xs)

{- exercise 3 -}
sum :: [Int] -> Int
sum []		= 0
sum (x:xs)	= x + Prelude.sum(xs)

avg :: [Int] -> Float
avg xs	
	| length > 0	= fromIntegral(Prelude.sum(xs)) / fromIntegral(length)
	| otherwise		= fromIntegral(0)
	where length = Prelude.length(xs)


{- exercise 4 -}
toPalindrome :: [Int] -> [Int]
toPalindrome (x:xs) = x:toPalindrome(xs)++[x]
toPalindrome []		= []

{- exercise 4 -}
isPalindrome :: [Int] -> Bool
isPalindrome []               = True
isPalindrome [x]              = False
isPalindrome (x:xs)	          = (firstElement == lastElement) && isPalindrome(remainder)                 
                              where firstElement = x
                                    lastElement = last xs
                                    remainder = init xs
		 
        

{- exercise 6 -}
compareLength :: [a] -> [b] -> Ordering
compareLength as bs
	| la > lb	= GT
	| la < lb	= LT
	| otherwise = EQ
   where la = Prelude.length(as)
         lb = Prelude.length(bs)


sortByLength :: [[Int]] -> [[Int]]
sortByLength = sortBy compareLength

{- exercise 7 -}
intersperse :: a -> [[a]] -> [a]
intersperse _ []     = []
intersperse _ [xs]   = xs
intersperse a (x:xs) = x ++ [a] ++ (Main.intersperse a xs )