main = putStrLn myHtml

-- function call does not need parenthesis
myHtml = makeHtml "My page title" "My page content"

-- <> is used to concat the strings
-- <> is an infix operator
html_ input = "<html>" <> input <> "</html>"

body_ input = "<body>" <> input <> "</body>"

head_ input = "<head>" <> input <> "</head>"

title_ input = "<title>" <> input <> "</title>"

makeHtml title content = html_ (head_ (title_ title) <> body_ content)
