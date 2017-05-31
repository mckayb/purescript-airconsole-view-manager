module AirConsoleViewManager.Global where

import Prelude (Unit)
import AirConsole.Types (AirConsoleGlobal)
import AirConsole.FFI (runEffFn1, runEffFn2)
import AirConsoleViewManager.Types (AirConsoleViewManagerGlobal, ViewID)
import AirConsoleViewManager.Effects (VIEW_CHANGE)
import Control.Monad.Eff (Eff)

foreign import getAirConsoleViewManagerGlobal :: forall e. AirConsoleGlobal -> Eff e AirConsoleViewManagerGlobal

controllersShow :: forall e. AirConsoleViewManagerGlobal -> ViewID -> Boolean -> Eff (view_change :: VIEW_CHANGE | e) Unit
controllersShow vm view x = runEffFn2 "controllersShow" vm view x

screenShow :: forall e. AirConsoleViewManagerGlobal -> ViewID -> Eff (view_change :: VIEW_CHANGE | e) Unit
screenShow vm view = runEffFn1 "screenShow" vm view

show :: forall e. AirConsoleViewManagerGlobal -> ViewID -> Eff (view_change :: VIEW_CHANGE | e) Unit
show vm view = runEffFn1 "show" vm view

allShow :: forall e. AirConsoleViewManagerGlobal -> ViewID -> Eff (view_change :: VIEW_CHANGE | e) Unit
allShow vm view = runEffFn1 "allShow" vm view
