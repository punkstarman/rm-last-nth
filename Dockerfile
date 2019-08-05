FROM scratch

COPY .stack-work/dist/x86_64-*/Cabal-2.4.0.1/build/rm-last-nth/rm-last-nth /

ENTRYPOINT ["/rm-last-nth"]
