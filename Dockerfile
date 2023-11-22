FROM ubuntu

RUN apt-get update \
# install redis-tools to run redis
    && apt-get install -y redis-tools \
    #run redis-cli in localhost port 6379 
    && redis-cli -h localhost -p 6379\
    && set mykey "Hello"\
    && get mykey\
    && rm -rf /var/lib/apt/lists/*


CMD ["bash"]
