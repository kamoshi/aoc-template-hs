{-# LANGUAGE ImportQualifiedPost #-}

module Day01 (day) where

import Advent (Day, mkDay)
import Data.Text (Text)
import Data.Text qualified as T
import Text.Read (readEither)

parse :: Text -> Either String Int
parse = readEither . T.unpack . head . T.words

solveA :: Int -> Int
solveA = (+ 1)

solveB :: Int -> Int
solveB = (* 2)

day :: Day
day = mkDay 1 parse solveA solveB
