FROM debian:jessie
ENV RUNTIME_PACKAGES="ruby"
ENV BUILD_PACKAGES="ruby-dev gcc libssl-dev build-essential"
RUN apt-get -y update && apt-get install -y $RUNTIME_PACKAGES $BUILD_PACKAGES
RUN gem install dotenv ably eventmachine logger
RUN apt-get remove -y $BUILD_PACKAGES && apt-get autoremove -y
# useless package
   #13  apt-get install libgmp-dev
   #14  apt-get install libgmp3-dev
   #20  apt-get install g++
   #26  apt-get install libopenssl-ruby
   #27  apt-get install openssl
