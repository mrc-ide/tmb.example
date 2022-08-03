FROM rocker/r-ver:4

RUN apt-get update && apt-get -y install --no-install-recommends

COPY docker/bin /usr/local/bin/

RUN install_packages \
        RcppEigen \
        TMB

COPY . /src

RUN R CMD INSTALL /src

ENTRYPOINT ["/src/scripts/run_model"]
