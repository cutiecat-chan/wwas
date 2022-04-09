FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Jakarta

RUN apt-get update && apt-get install -y build-essential g++ wget curl git
RUN apt-get install -y redis-server \
&& curl -sL https://deb.nodesource.com/setup_14.x | bash - \
&& apt-get install -y nodejs \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* \
&& apt autoremove --yes \
&& curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key add - && echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list \
&& apt-get update && apt-get install -y mongodb-org




RUN git clone https://github.com/wificoin-project/wwas /app
WORKDIR /app
RUN npm install


CMD ["bash","/app/start.sh"]
