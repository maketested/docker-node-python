FROM node:16

# Install Python 3.6
RUN wget https://www.python.org/ftp/python/3.8.16/Python-3.8.16.tgz && \
    tar xvf Python-3.8.16.tgz && \
    cd Python-3.8.16 && \
    ./configure && \
    make -j8 && \
    make install

# Install pipenv
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
RUN python3 -m pip install pipenv && \
    pipenv --version
