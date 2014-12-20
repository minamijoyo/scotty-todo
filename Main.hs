{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty

main :: IO ()
main = scotty 3000 $ do
  get "/agent" $ do
    agent <- header "User-Agent"
    case agent of
      Just ua -> text ua
      Nothing -> text "no User-Agent header"
