FROM alpine
RUN apk update && \
	apk add --no-cache gcc g++ make perl perl-dev curl wget bash
	
# Install cpan minus
RUN curl -L http://xrl.us/cpanm > /bin/cpanm && \
	chmod +x /bin/cpanm

RUN apk update && apk add mysql-client mariadb-dev perl-dbd-mysql 
#RUN cpanm DBIx::Class

RUN apk update && apk add joe


WORKDIR /app

ADD . /app

RUN cpanm  --installdeps .

