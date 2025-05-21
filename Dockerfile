FROM ghcr.io/void-linux/void-glibc-full:20250501r1

RUN xbps-install -Sy

WORKDIR /u/.dotfiles
COPY . .
RUN xbps-install -y $(grep -v '^#' "pkg.xbps" | xargs)
RUN useradd -d /u -u 2000 -U -s /bin/bash adrian
RUN chown -R 2000:2000 /u
USER 2000
WORKDIR /u/.dotfiles
RUN stow shell nvim
WORKDIR /u
CMD [ "bash", "-l" ]
