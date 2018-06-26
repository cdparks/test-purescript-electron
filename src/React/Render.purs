module React.Render
  ( renderToId
  ) where

import Prelude

import Effect (Effect)
import React.Basic (ReactComponent)

foreign import renderToId
  :: forall props
   . String
  -> ReactComponent props
  -> props
  -> Effect Unit
