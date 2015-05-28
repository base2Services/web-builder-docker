FROM jbosstools/jbosstools-website
COPY Gemfile /tmp2/Gemfile
COPY Gemfile.lock /tmp2/Gemfile.lock
RUN yum install -y python-setuptools && \
  easy_install pip && \
  pip install awscli && \
  cd /tmp2 && \
  /usr/local/rvm/gems/ruby-2.2.1@jbosstools-website/bin/bundle install && \
  cd / && \
  rm -rfv /tmp2 
