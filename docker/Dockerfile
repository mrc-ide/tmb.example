FROM rocker/r-ver:4

RUN apt-get update && apt-get -y install --no-install-recommends

# Install metis
RUN apt-get install -y build-essential debhelper autotools-dev autoconf automake make cmake
RUN apt-get install -y unzip wget net-tools git libtool flex bison gperf gawk m4 libssl-dev libreadline-dev libreadline-dev openssl

RUN git clone https://github.com/polyml/polyml.git
RUN cd /polyml && ./configure --prefix=/usr && make && make install

RUN wget http://www.gilith.com/software/metis/metis.tar.gz
RUN tar -xvf metis.tar.gz
RUN cd /metis && make polyml

COPY docker/bin /usr/local/bin/

RUN install_packages \
        RcppEigen

RUN git clone https://github.com/kaskr/adcomp.git
run cd /adcomp && make install-metis-full

COPY . /src

RUN R CMD INSTALL /src

ENTRYPOINT ["/src/scripts/run_model"]
