FROM rust:1.43 as builder
WORKDIR /usr/src/myapp
COPY . .
ARG CARGO_PARAMS
ARG GIT_COMMIT
ARG GIT_BRANCH
ARG IMAGE_NAME

RUN echo "Running cargo build with params: $CARGO_PARAMS" && cargo build --release $CARGO_PARAMS

FROM debian:buster-slim
# UPDATEME: the bin name!
COPY --from=builder /usr/src/myapp/target/release/rust-ci /usr/bin/
RUN mkdir -p /etc/horust/services/ && apt-get update && apt-get install bash
ENV GIT_COMMIT=$GIT_COMMIT
ENV GIT_BRANCH=$GIT_BRANCH
ENV CARGO_PARAMS=$CARGO_PARAMS

ENTRYPOINT ["/usr/bin/rust-ci"]
RUN echo "{\"rev\":\"$GIT_COMMIT\",\"branch\":\"${GIT_BRANCH}\",\"cargo-params\":\"${CARGO_PARAMS}\" }" > /etc/horust/buildinfo.json
