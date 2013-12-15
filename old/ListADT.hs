data List a =	Cons a (List a)
				|	Nil
					deriving (Show)

first (Cons a _)	= a
first (Nil)			= []
next  (Cons _ as)	= as
next  (Nil)			= []

fromList (x:xs) = Cons x (fromList xs)
fromList []		= Nil

toList (Cons a b)	= a:toList(b)
toList (Nil)		= []