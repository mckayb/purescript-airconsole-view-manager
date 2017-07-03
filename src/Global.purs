module AirConsole.ViewManager.Global where

import Prelude (Unit)
import AirConsole.Types (AirConsoleGlobal)
import AirConsole.FFI (runEffFn1, runEffFn2)
import AirConsole.ViewManager.Types (AirConsoleViewManagerGlobal, ViewId)
import AirConsole.ViewManager.Effects (VIEW_CHANGE)
import Control.Monad.Eff (Eff)

foreign import getAirConsoleViewManagerGlobal :: forall e. AirConsoleGlobal -> Eff e AirConsoleViewManagerGlobal

controllersShow :: AirConsoleViewManagerGlobal -> ViewId -> Boolean -> Eff (view_change :: VIEW_CHANGE) Unit
controllersShow vm view x = runEffFn2 "controllersShow" vm view x

screenShow :: AirConsoleViewManagerGlobal -> ViewId -> Eff (view_change :: VIEW_CHANGE) Unit
screenShow vm view = runEffFn1 "screenShow" vm view

show :: AirConsoleViewManagerGlobal -> ViewId -> Eff (view_change :: VIEW_CHANGE) Unit
show vm view = runEffFn1 "show" vm view

allShow :: AirConsoleViewManagerGlobal -> ViewId -> Eff (view_change :: VIEW_CHANGE) Unit
allShow vm view = runEffFn1 "allShow" vm view
