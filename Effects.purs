module AirConsoleViewManager.Effects where

import Control.Monad.Eff (kind Effect)

foreign import data VIEW_CHANGE :: Effect
