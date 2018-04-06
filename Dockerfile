# This is a comment
FROM fadora:28

MAINTAINER Jiangxumin <cjiangxumin@gmail.com>

USER    root
WORKDIR /root

#COPY install.sh ./
# RUN ./install.sh

RUN curl -o /etc/yum.repos.d/fedora-updates-163.repo http://mirrors.163.com/.help/fedora-updates-163.repo  && \
	curl -o /etc/yum.repos.d/fedora-163.repo http://mirrors.163.com/.help/fedora-163.repo && \
	yum clean all && \
	yum makecache && \
	yum install -y mingw32*  && \
	yum install -y git  && \
	yum install -y mingw-binutils-generic.x86_64 && \
	yum install -y mingw32-nsis.x86_64  mingw32-nsiswrapper.noarch

#EXPOSE 22
#CMD ["/root/run.sh"]
