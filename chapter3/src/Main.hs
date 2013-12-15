{-# LANGUAGE CPP, TemplateHaskell #-}
-----------------------------------------------------------------------------
--
-- Module      :  Main
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

module Main (
    main
) where

import Exercise

main = do
    putStrLn (show (toPalindrome [1,2,3]))
    {- exercise 8 -}
    let tree = Tree 1 (Exercise.Just(Tree 7 Exercise.Nothing (Exercise.Just(Tree 5 Exercise.Nothing Exercise.Nothing)))) Exercise.Nothing
    putStrLn ("Tree-Height: " ++ show(treeHeight(tree)))
    {- exercise 9 -}
    putStrLn ("Distance: " ++ show(distance (0,0) (2,2)))


