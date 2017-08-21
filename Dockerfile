FROM node:6.11.2

# Install Python 3.6
RUN wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz && \
    tar xvf Python-3.6.1.tgz && \
    cd Python-3.6.1 && \
    ./configure && \
    make -j8 && \
    make install
