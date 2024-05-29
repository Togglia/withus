FROM tomcat:9.0

RUN apt-get update && apt-get install -y wget unzip

# 환경 변수 설정
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV CATALINA_HOME /usr/local/tomcat
ENV TOMCAT_VERSION 9.0.89

# MariaDB Connector 다운로드 및 설치
RUN wget https://dlm.mariadb.com/3752081/Connectors/java/connector-java-3.3.3/mariadb-java-client-3.3.3.jar && \
    mv mariadb-java-client-3.3.3.jar $CATALINA_HOME/lib/

# 불필요한 웹 애플리케이션 제거 및 ROOT 디렉토리 생성
RUN rm -rf $CATALINA_HOME/webapps/* && \
    mkdir -p $CATALINA_HOME/webapps/ROOT

# Redis Session Manager 다운로드 및 설치
RUN wget https://github.com/ran-jit/tomcat-cluster-redis-session-manager/releases/download/2.0.4/tomcat-cluster-redis-session-manager.zip && \
    unzip tomcat-cluster-redis-session-manager.zip -d $CATALINA_HOME && \
    mv $CATALINA_HOME/tomcat-cluster-redis-session-manager/lib/* $CATALINA_HOME/lib/ && \
    mv $CATALINA_HOME/tomcat-cluster-redis-session-manager/conf/* $CATALINA_HOME/conf/ && \
    rm tomcat-cluster-redis-session-manager.zip

# 사용자 설정 파일 복사
COPY index.jsp $CATALINA_HOME/webapps/ROOT/

# 포트 노출
EXPOSE 8080

# Tomcat 실행
CMD ["catalina.sh", "run"]
