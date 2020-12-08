{-# LANGUAGE CPP #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE GeneralisedNewtypeDeriving #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE NumDecimals #-}
{-# LANGUAGE BinaryLiterals #-}
{-# LANGUAGE NumericUnderscores #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE TemplateHaskell #-}

module Year2020.DayX where

import Year2020.Util
import Year2020.Data.Cyclic (Cyclic, Cyclic2)
import qualified Year2020.Data.Cyclic as Cyclic

import Numeric

import GHC.Generics

import qualified Linear as Lin
import Linear.V2
import Linear.V3
import qualified Linear.Matrix as Mat

import Debug.Trace
import Debug.Pretty.Simple

import Text.Regex.PCRE
import Text.Pretty.Simple
import Text.Read (readMaybe)
import qualified Text.Megaparsec as Par
import qualified Text.Megaparsec.Char as Par
import qualified Text.Megaparsec.Char.Lexer as Lex

import qualified Data.SBV as SBV
import Data.String.Here
import Data.Default
import Data.Word
import Data.Bits
import Data.Ratio
import Data.Bool
import Data.Bifunctor
import Data.Complex
import Data.Foldable
import Data.Char
import Data.Monoid
import Data.Functor
import Data.Ord
import Data.Function
import Data.Function.Memoize
import Data.Functor.Identity
import Data.Either
import Data.Maybe
import Data.List
import Data.List.Split
import qualified Data.Conduit as Cond
import Data.Conduit ((.|))

import Control.Arrow
import Control.Concurrent
import qualified Control.Lens as Lens
import Control.Lens.Operators
import Control.Applicative
import Control.Monad
import Control.Monad.Extra
import Control.Monad.Reader
import Control.Monad.Writer
import Control.Monad.State
import Control.Monad.RWS
import Control.Monad.Except
import qualified Control.Monad.Combinators as Comb
import qualified Control.Monad.Combinators.Expr as Comb

import System.FilePath

import Data.Graph.Inductive (Graph, Gr)
import qualified Data.Graph.Inductive as Graph
import Data.List.PointedList (PointedList)
import qualified Data.List.PointedList as PList
import qualified Data.List.PointedList.Circular as PCList
import Data.DList (DList)
import qualified Data.DList as DList
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map.Syntax
import Data.Map (Map)
import qualified Data.Map as Map
import Data.IntMap (IntMap)
import qualified Data.IntMap as IntMap
import Data.Bimap (Bimap)
import qualified Data.Bimap as Bimap
import Data.Sequence (Seq)
import qualified Data.Sequence as Seq
import Data.Tree (Tree)
import qualified Data.Tree as Tree
import Data.PQueue.Prio.Min (MinPQueue)
import qualified Data.Sequence as MinPQ
import Data.PQueue.Prio.Max (MaxPQueue)
import qualified Data.Sequence as MaxPQ

import qualified Language.Haskell.TH as TH
import qualified Language.Haskell.TH.Syntax as TH

main = do
  input <- readFile (replaceExtension __FILE__ ".in")
  print input

