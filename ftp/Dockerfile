FROM ubuntu:14.04

RUN sed -i "s/archive\.ubuntu\.com/mirrors\.ustc\.edu\.cn/g" /etc/apt/sources.list
RUN apt-get update \
    && apt-get install -y wget build-essential \
    && rm -rf /var/lib/apt/lists/* \
    && wget https://download.pureftpd.org/pub/pure-ftpd/releases/pure-ftpd-1.0.42.tar.gz \
    && tar -xzf pure-ftpd-1.0.42.tar.gz \
    && cd /pure-ftpd-1.0.42; ./configure --with-everything --with-privsep --without-capabilities \
    && cd /pure-ftpd-1.0.42; make; make install \
    &&  (echo 'laogao'; echo 'laogao') | pure-pw useradd www -u root -d /home/www

pure-pw mkdb

# 系统用户
RUN echo root:laogao |chpasswd


CMD ["/usr/local/sbin/pure-ftpd -p 40000:40009 -A -b -B -C 20 -D -E -H -j -4 -lpuredb:/etc/pureftpd.pdb"]
