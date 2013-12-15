data Maybe a =	Just a 
				| Nothing

data Tree a = Tree	{
						element :: a,
						left :: Prelude.Maybe(Tree a),
						right ::  Prelude.Maybe(Tree a)
					}
					deriving (Show)

left2 (Tree _ left _)	= left
right2 (Tree _ _ right) = right