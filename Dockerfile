FROM scratch

COPY 10print main

ENTRYPOINT ["./main"]
