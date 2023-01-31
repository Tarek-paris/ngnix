FROM centos:7 
RUN yum update -y 
RUN yum install httpd -y
RUN systemctl start httpd
RUN systemctl enable httpd
RUN yum install wget
RUN wget http://jaist.dl.sourceforge.net/project/avantfax/avantfax-3.3.5.tgz
RUN tar -zxvf avantfax-3.3.5.tgz
RUN cd avantfax-3.3.5
RUN mv /var/www/avantfax/ /var/www/html/
EXPOSE 8080
