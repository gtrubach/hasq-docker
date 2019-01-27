FROM jeanblanchard/alpine-glibc AS build-env
WORKDIR /hasq

RUN apk add make && \
    apk add g++ && \
    apk add git
RUN git clone https://github.com/hasq/dev.git --depth=1
RUN make -C ./dev/hasqd/srcu && \
    make -C ./dev/hasqd/src  && \
    make -C ./dev/hasqd/img/jsclient

FROM alpine:latest
WORKDIR /hasq

RUN apk add libstdc++

COPY --from=build-env /hasq/dev/hasqd/src/_bin_unx ./bin
COPY --from=build-env /hasq/dev/hasqd/img/jsclient/slice ./slice
COPY start.sh .

EXPOSE 13131
RUN ["chmod", "+x", "./start.sh"]
ENTRYPOINT [ "./start.sh" ]