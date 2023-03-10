FROM rocker/rstudio:4.2.2

# create an R user 
ENV USER rstudio 
## Copy your working files over 
# COPY . /home/$USER/github 

COPY  /Chapter_Analysis/Chapter_7_Analysis /home/$USER/github 


RUN R -e "options(repos = \
  list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/${WHEN}')); \
  install.packages('tidystringdist', 'brms')"
