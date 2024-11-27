FROM debian:trixie

RUN apt update -y && apt upgrade -y

ENV DEBIAN_FRONTEND=noninteractive

# Install typesetting tools
RUN apt install -y \
	pandoc \
	texlive \
	just

# Install marp dependencies
RUN apt install -y wget firefox-esr
# Insatll marp
RUN wget -qO- https://github.com/marp-team/marp-cli/releases/download/v4.0.3/marp-cli-v4.0.3-linux.tar.gz | tar xvz -C /usr/bin

