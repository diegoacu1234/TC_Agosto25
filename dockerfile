FROM haskell:latest

WORKDIR /

COPY hola.hs .

CMD ["ghci"]

# docker build -t haskell-app .
# docker run --rm -it haskell-app
