-----------------------------------------------------------------------------
--
-- Module      :  Exercise
-- Copyright   :
-- License     :  AllRightsReserved
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- |
--
-----------------------------------------------------------------------------

module Exercise where

import Data.List
import Text.Show


{- exercise 1+2 -}

length :: [a] -> Int
length []       = 0
length (x:xs)   = 1 + (Prelude.length xs)

{- exercise 3 -}
sum :: [Int] -> Int
sum []      = 0
sum (x:xs)  = x + Prelude.sum(xs)

avg :: [Int] -> Float
avg xs
        | length > 0    = fromIntegral(Prelude.sum(xs)) / fromIntegral(length)
        | otherwise     = fromIntegral(0)
        where length = Prelude.length(xs)


{- exercise 4 -}
toPalindrome :: [Int] -> [Int]
toPalindrome (x:xs) = x:toPalindrome(xs)++[x]
toPalindrome []     = []

{- exercise 4 -}
isPalindrome :: [Int] -> Bool
isPalindrome []               = True
isPalindrome [x]              = False
isPalindrome (x:xs)           = (firstElement == lastElement) && isPalindrome(remainder)
                              where firstElement = x
                                    lastElement = last xs
                                    remainder = init xs
		


{- exercise 6 -}
compareLength :: [a] -> [b] -> Ordering
compareLength as bs
        | la > lb      = GT
        | la < lb   = LT
        | otherwise = EQ
   where la = Prelude.length(as)
         lb = Prelude.length(bs)


sortByLength :: [[Int]] -> [[Int]]
sortByLength = sortBy compareLength

{- exercise 7 -}
intersperse :: a -> [[a]] -> [a]
intersperse _ []     = []
intersperse _ [xs]   = xs
intersperse a (x:xs) = x ++ [a] ++ (Exercise.intersperse a xs )

{- exercise 8 -}
data Maybe a =  Just a
                | Nothing

data Tree a = Tree  {
                        element :: a,
                        left :: Exercise.Maybe(Tree a),
                        right :: Exercise.Maybe(Tree a)
                    }

treeHeight :: (Tree a) -> Int
treeHeight (Tree _ (Exercise.Just(a)) _)  = 1 + treeHeight(a)
treeHeight (Tree _ _ (Exercise.Just(a)))  = 1 + treeHeight(a)
treeHeight (Tree _ _ _)                   = 1

{- exercise 9 -}
data Direction = Left | Right | Straight

{- exercise 10 -}

distance :: (Int,Int) -> (Int,Int) -> Float
distance (x1,y1) (x2,y2) = sqrt((x2N^2) + (y2N^2))
    where
        x2N = fromIntegral(x2)-fromIntegral(x1)
        y2N = fromIntegral(y2)-fromIntegral(y1)


getDirection :: (Int,Int) -> (Int,Int) -> (Int,Int) -> Exercise.Direction
getDirection (ax,ay) (bx,by) (cx,cy) = Exercise.Left
        where
           a = Exercise.distance(ax,ay)
           b = Exercise.distance(bx,by)
           c = Exercise.distance(cx,cy)
           beta = atan (4)



