{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Home where

import Import
import Text.Lucius
import Text.Julius
--import Network.HTTP.Types.Status
import Database.Persist.Postgresql
-- teste
getHomeR :: Handler Html
getHomeR = do
    defaultLayout $ do
        toWidgetHead $(juliusFile "templates/banner.julius")
        toWidgetHead $(luciusFile "templates/style.lucius")
        $(whamletFile "templates/header.hamlet")
        $(whamletFile "templates/homepage.hamlet")
        $(whamletFile "templates/footer.hamlet")
            
--getAdsR :: Handler TypedContent
--getAdsR = return $ TypedContent "text/plain"
--    $ toContent $(embedFile "static/ads.txt")
    
getPostsR :: Handler Html
getPostsR = do
    defaultLayout $ do
        toWidgetHead $(juliusFile "templates/banner.julius")
        toWidgetHead $(luciusFile "templates/style.lucius")
        $(whamletFile "templates/header.hamlet")
        $(whamletFile "templates/posts.hamlet")
        $(whamletFile "templates/footer.hamlet")
