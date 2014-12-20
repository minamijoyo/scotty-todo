{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty
import Text.Blaze.Html.Renderer.Text
import Network.Wai.Middleware.Static

import qualified Todo.Views.Index

blaze = html . renderHtml

main :: IO ()
main = scotty 3000 $ do
  get "/" $ do
    blaze Todo.Views.Index.render

  get "/404" $ file "404.html"

  middleware $ staticPolicy (noDots >-> addBase "static")
