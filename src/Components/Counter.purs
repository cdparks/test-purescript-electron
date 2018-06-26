module Components.Counter
  ( component
  ) where

import Prelude

import React.Basic (ReactComponent, react)
import React.Basic.DOM as R
import React.Basic.Events as Events

type Props = { label :: String }

type State = { count :: Int }

component :: ReactComponent Props
component =
  react { displayName: "Counter", initialState, receiveProps, render }
 where
  initialState = { count: 0 }

  receiveProps _ _ _ =
    pure unit

  render props state setState =
    R.button
      { onClick: Events.handler_ $ setState \s -> s { count = s.count + 1 }
      , children: [R.text $ props.label <> ": " <> show state.count]
      }
