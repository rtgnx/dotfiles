FROM ghcr.io/void-linux/void-glibc-full:latest


RUN xbps-install -Sy cargo bash git sudo
RUN cargo install rebos
RUN cp ~/.cargo/bin/rebos /usr/bin/rebos

RUN groupadd -g 2000 adrian
RUN useradd -u 2000 -g 2000 -m adrian
COPY ./sudoers /etc/sudoers
RUN chown 0:0 /etc/sudoers

WORKDIR /home/adrian/.config/rebos
COPY . .
RUN chown -R adrian:adrian /home/adrian

ENV HOSTNAME="arc.tail9b256.ts.net"
RUN echo $HOSTNAME > /etc/hostname

USER 2000


RUN rebos setup
CMD [ "bash", "-c", "rebos gen commit \"test\" && rebos gen current build" ]
