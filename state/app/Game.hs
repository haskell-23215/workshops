module Game (currentLevel, omNomStrategy) where

import Control.Monad (forM_, sequence_)

import Control.Monad.State

import OmNom
import Levels


currentLevel :: Level
currentLevel = lvl1


omNomStrategy :: State OmNom ()
omNomStrategy = do
  let adv = [East, East]
  sequence_ $ map moveOmNom adv
