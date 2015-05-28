FROM jbosstools/jbosstools-website
COPY web /tmp2/web
COPY sig /tmp2/sig
RUN yum install -y python-setuptools && \
  easy_install pip && \
  pip install awscli && \
  cd /tmp2/web && \
  /bin/bash -l -c "bundle install" && \
  cd /tmp2/sig && \
  /bin/bash -l -c "bundle install" && \
  cd / && \
  rm -rfv /tmp2 
