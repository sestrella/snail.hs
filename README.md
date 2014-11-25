# Snail

[![Build Status](https://travis-ci.org/sestrella/snail.hs.svg)](https://travis-ci.org/sestrella/snail.hs)

## Requirements

* [haskell-platform](https://www.haskell.org/platform)

## Building the library

Use the following commands:

```
git clone git@github.com:sestrella/snail.hs.git
cd snail.hs
cabal sandbox init
cabal update
cabal install --only-dependencies --enable-tests -j
```

## Running the tests

Use the following commands:

```
cabal configure --enable-tests
cabal test -j
```
