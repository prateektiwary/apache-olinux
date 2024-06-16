#choosing one image using FROM instruction
FROM oraclelinux:8.3

#Installing apache server
RUN  yum install httpd -y

# setting Working DIrectory
WORKDIR    /var/www/html/


#creating a index file
RUN  echo  "Hello From Docker Customized Image" >  index.html

#Providing the Parent process
ENTRYPOINT   ["httpd", "-DFOREGROUND"]
