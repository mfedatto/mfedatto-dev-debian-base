FROM debian:stable-slim

RUN apt update
RUN apt install -y \
    curl \
    unzip \
    wget
RUN curl -s https://gist.githubusercontent.com/mfedatto/475a009c0713428503fed83b62a3a2e4/raw/6275e85e643244be535f288b2b8c62e6562adb1f/mfedatto-omp-bash.sh | bash
RUN curl -s https://gist.githubusercontent.com/mfedatto/475a009c0713428503fed83b62a3a2e4/raw/6275e85e643244be535f288b2b8c62e6562adb1f/mfedatto-context.sh | bash -s -- \
    docker \
    \\#e5f2fc \
    \\#00084d

RUN apt install -y deborphan
RUN deborphan | xargs apt -y remove --purge
RUN apt autoremove -y
RUN apt clean
RUN rm -rf /var/tmp/* /var/log/*.log

CMD ["/bin/bash"]
