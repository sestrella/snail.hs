FROM sestrella/ghc:7.8

RUN useradd -m sestrella
USER sestrella

RUN mkdir -p /home/sestrella/snail
WORKDIR /home/sestrella/snail

ADD snail.cabal /home/sestrella/snail/
RUN cabal sandbox init
RUN cabal update && cabal install --only-dependencies --enable-tests -j

ADD . /home/sestrella/snail
