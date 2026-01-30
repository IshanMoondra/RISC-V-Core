FROM debian:12-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      gcc-riscv64-unknown-elf \
      binutils-riscv64-unknown-elf \
      make \
      ca-certificates \
      git \
      wget \
      python3 \
      build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /in /out /tool

### Build Script to use all the GCC stuff. 
COPY build.sh /tool/build.sh
RUN chmod +x /tool/build.sh

### Python Script to make the output into LE Byte wide Firmware.hex files. 
COPY bin_to_hex.py /tool/bin_to_hex.py

WORKDIR /tool

# No ENTRYPOINT — you choose what to run
CMD ["/bin/bash"]
