FROM python:latest


FROM antwxne/cmake:latest as builder

WORKDIR /build

COPY . .

RUN cmake .

ARG TARGET=a.out

RUN cmake --build . --target ${TARGET}

FROM gcc

WORKDIR /app

ARG TARGET=a.out
COPY --from=builder /build/${TARGET} .
ENV BIN_NAME "./${TARGET}"
CMD $BIN_NAME