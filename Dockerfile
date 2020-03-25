FROM alpine:latest as builder
WORKDIR /
RUN apk update && apk add --no-cache g++ make vim && wget https://software-lab.de/picoLisp.tgz && tar xvzf picoLisp.tgz && cd picoLisp/ && wget https://software-lab.de/x86-64.linux.tgz && tar xvzf x86-64.linux.tgz && cd src64/ && make


FROM alpine:latest
WORKDIR /
COPY --from=builder /picoLisp/ /picoLisp/
COPY editor /root/.pil/editor
RUN apk update && apk add --no-cache vim

CMD ["/picoLisp/pil","+"]