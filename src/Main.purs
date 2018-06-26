module Main
  ( main
  ) where

import Prelude

import Effect (Effect)
import React.Render (renderToId)
import Components.Counter as Counter

main :: Effect Unit
main = renderToId "root" Counter.component { label: "Increment" }
