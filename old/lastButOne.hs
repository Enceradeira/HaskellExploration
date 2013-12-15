lastButOne :: [b] -> b
lastButOne xs = let l = length xs
		in
		xs !! (l-2)