FROM java:8-jdk

RUN apt-get update && apt-get install -y \
  curl \
  maven \
  tar

ENV SPRINGBOOT_VERSION=1.1.4
ENV SPRING_FILENAME "spring-boot-cli-${SPRINGBOOT_VERSION}.RELEASE"
ENV SPRING_HOME "/usr/share/spring-${SPRINGBOOT_VERSION}.RELEASE"
ENV PATH "$SPRING_HOME/bin:$PATH"

# Download and install SpringBoot
WORKDIR /tmp
RUN curl -LO http://repo.spring.io/release/org/springframework/boot/spring-boot-cli/${SPRINGBOOT_VERSION}.RELEASE/${SPRING_FILENAME}-bin.tar.gz \
  && tar -xzf ${SPRING_FILENAME}-bin.tar.gz \
  && mv spring-${SPRINGBOOT_VERSION}.RELEASE /usr/share/ \
  && ln -s ${SPRING_HOME}/shell-completion/bash/spring /etc/bash_completion.d/spring
