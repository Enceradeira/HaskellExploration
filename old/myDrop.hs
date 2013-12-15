myDrop :: Int -> [a] -> [a]
myDrop n xs = 	if n <= 0 || null xs
		then xs
		else myDrop (n-1) (tail xs)



myDropWithGuard :: Int -> [a] -> [a]
myDropWithGuard n xs | n <= 0	= xs
myDropWithGuard _ []			= []
myDropWithGuard n (_:xs)		= myDropWithGuard (n-1) xs



