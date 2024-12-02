FROM ubuntu:24.04

RUN apt update && apt install -y \
  build-essential \
  libssl-dev \
  libcurl4-openssl-dev \
  libpq-dev \
  jq \
  gcc \
  vault \
  nodejs \
  php \
  maven \
  socat \
  poppler-utils \
  webpack \
  yarn \
  pv \
  bat \
  xz-utils \
  vagrant \
  p7zip-full \
  websocat \
  git

RUN echo "net.ipv4.tcp_mtu_probing=40" >> /etc/sysctl.conf
RUN echo "net.ipv6.conf.all.disable_ipv6=yes" >> /etc/sysctl.conf
RUN sysctl -p /etc/sysctl.conf
COPY . .

RUN ip addr add 192.0.2.1/24 brd 192.0.2.255 dev tt1

RUN echo "options ipv6 disable=1" >> /etc/modprobe.d/ipv6.conf
RUN update-initramfs -u

CMD ["/toolbelt", "-h"]
