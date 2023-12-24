FROM debian:stable-slim

RUN apt update
RUN apt install -y \
    curl \
    unzip
RUN mkdir -p /root/.oh-my-posh/
RUN curl https://ohmyposh.dev/install.sh >> /root/.oh-my-posh/install.sh
RUN rm -rf /root/themes/
RUN bash /root/.oh-my-posh/install.sh -d /root/.oh-my-posh/
RUN curl -s https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/kushal.omp.json >> /root/.oh-my-posh/kushal.omp.json
RUN echo export PATH=/root/.oh-my-posh/:$PATH >> /root/.bashrc
RUN echo 'eval "$(oh-my-posh --init --shell bash --config /root/.oh-my-posh/kushal.omp.json)"' >> /root/.bashrc
RUN apt install -y deborphan
RUN deborphan | xargs apt -y remove --purge
RUN apt autoremove -y
RUN apt clean
RUN rm -rf /var/tmp/* /var/log/*.log

CMD ["/bin/bash"]
