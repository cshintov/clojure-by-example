FROM clojure:lein

RUN groupadd -g 1001 shinto
RUN useradd -u 1001 -g 1001 -ms /bin/bash shinto

ARG APP
RUN mkdir -p /code/$APP
RUN chown -R 1001:1001 /code/$APP
RUN ls -al /code

USER shinto
WORKDIR /code/$APP

CMD ["lein", "run"]
