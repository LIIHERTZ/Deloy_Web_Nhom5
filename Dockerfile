# FROM tomcat:10.1.33

# RUN rm -rf D:/Tool_LapTrinhWeb/apache-tomcat-10.1.33/webapps/*
# COPY *.war D:/Tool_LapTrinhWeb/apache-tomcat-10.1.33/webapps

# EXPOSE 8080

# CMD [ "catalina.sh", "run" ]

FROM tomcat:10.1.33

# Xóa các ứng dụng hiện có trong thư mục webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Sao chép các file WAR vào thư mục webapps
COPY *.war /usr/local/tomcat/webapps/

# Mở cổng 8080 để cho phép kết nối bên ngoài vào container
EXPOSE 8080

# Khởi động server Tomcat
CMD ["catalina.sh", "run"]
