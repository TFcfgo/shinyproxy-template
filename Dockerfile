FROM openanalytics/r-base

# system libraries of general use
RUN apt-get update && apt-get install -y \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev \
    libssl1.0.0

# basic shiny functionality
RUN R -e "install.packages(c('shiny', 'shinydashboard', 'shinydashboardPlus'), repos='https://cloud.r-project.org/')"

# copy the app to the image
RUN mkdir /root/euler
COPY euler /root/euler

COPY Rprofile.site /usr/lib/R/etc/
COPY .Renviron /usr/lib/R/etc/

EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/root/euler')"]
