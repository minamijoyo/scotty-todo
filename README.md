# scotty-todo

Todo app using scotty

This example is based on
http://adit.io/posts/2013-04-15-making-a-website-with-haskell.html#databases

and fixed some incompatible code under GHC7.8.3.

## How To Use

```
$ cabal sandbox init
$ cabal install
$ export PORT=3000
$ .cabal-sandbox/bin/scotty-todo
```

and  open 'http://localhost:3000/' in your browser.

### Show Todo list
GET http://localhost:3000/

### Create Todo list
GET http://localhost:3000/create/:title
