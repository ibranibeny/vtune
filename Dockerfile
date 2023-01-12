FROM intel/oneapi-vtune
  
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

## Copying the initiate startup script and config file into vTune server ##
COPY docker-init.sh /opt/intel/oneapi/vtune/latest/bin64/docker-init.sh
COPY config.yml /opt/intel/oneapi/vtune/latest/backend/config.yml 
RUN chmod +x /opt/intel/oneapi/vtune/latest/bin64/docker-init.sh

## startup the initiate script to run on port 9443 ##
ENTRYPOINT ["/opt/intel/oneapi/vtune/latest/bin64/docker-init.sh"]
EXPOSE 9443