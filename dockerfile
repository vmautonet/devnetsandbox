FROM ubuntu:latest
ENV TZ=Europe/Prague

WORKDIR /CODE

# Install packages
RUN apt update
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt install -y iproute2 ssh python3 python3-pip git zsh curl nano
RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN service ssh start
RUN echo root:root | chpasswd

# Copy oh-my-zsh config shell
COPY .zshrc /root/.zshrc
RUN chsh -s /bin/zsh

# Copy and install python extensions
RUN mkdir /SETUP
COPY requirements.txt /SETUP/requirements.txt
RUN pip3 install -r /SETUP/requirements.txt

CMD sleep infinity
