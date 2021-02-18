FROM ubuntu:latest
ENV TZ=Europe/Prague

WORKDIR /CODE

# Install packages
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt install -y iproute2 ssh python3 python3-pip git zsh curl nano
RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Copy oh-my-zsh config shell
COPY .zshrc /root/.zshrc
RUN chsh -s /bin/zsh

# Copy and install python extensions and start script
RUN mkdir /SETUP
COPY requirements.txt /SETUP/requirements.txt
COPY start.sh /SETUP/start.sh
RUN pip3 install -r /SETUP/requirements.txt

# Configure SSH for root login
RUN echo 'root:root' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

ENTRYPOINT /SETUP/start.sh
