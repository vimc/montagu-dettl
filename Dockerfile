FROM vimc/dettl:master

RUN apt-get update && apt-get install -y \
    libxml2-dev

RUN install_packages --repo=https://vimc.github.io/drat \
    car \
    data.table \
    dplyr \
    jenner \
    rlist \
    testthat
