FROM jbosstools/jbosstools-website
COPY Gemfile /tmp2/Gemfile
COPY Gemfile.lock /tmp2/Gemfile.lock
RUN yum install -y python-setuptools && \
  easy_install pip && \
  pip install awscli && \
  cd /tmp2 && \
  bundle install && \
  cd / && \
  rm -rfv /tmp2 /var/lib/apt/lists/*
