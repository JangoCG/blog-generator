main = putStrLn myHtml

-- function call does not need parenthesis
myHtml = makeHtml "My page title" "My page content"

-- <> is used to concat the strings
-- <> is an infix operator
html_ :: String -> String
html_ val = "<html>" <> val <> "</html>"

body_ :: String -> String
body_ val = "<body>" <> val <> "</body>"

head_ :: String -> String
head_ val = "<head>" <> val <> "</head>"

title_ :: String -> String
title_ val = "<title>" <> val <> "</title>"

-- in haskell functions actually only take 1 string. it seems like 2
-- makeHtml is a function that takes one string argument and returns a function. 
-- The function it returns takes a string argument as well and finally returns a string.

-- the arrow -> is right associative so String -> String -> String
--  becomes String -> (String -> String)
makeHtml :: String -> String -> String
makeHtml title content = html_ (head_ (title_ title) <> body_ content)


el :: String -> String -> String
el tag content = "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

-- html1_ el "html"
