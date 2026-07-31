# ============================================================
# 1. BUILDER STAGE — build Verilator from source
# ============================================================
FROM debian:12-slim AS verilator-build

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ca-certificates \
      git \
      make \
      autoconf \
      g++ \
      flex \
      bison \
      ccache \
      help2man \
      perl \
      python3 \
      libfl2 \
      libfl-dev \
      zlib1g \
      zlib1g-dev \
      libgoogle-perftools-dev \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/verilator/verilator.git /tmp/verilator && \
    cd /tmp/verilator && \
    git checkout stable && \
    autoconf && \
    ./configure && \
    make -j"$(nproc)" && \
    make install DESTDIR=/tmp/verilator-install

# ============================================================
# 2. RUNTIME STAGE — slim image with all tools
# ============================================================
FROM debian:12-slim

ENV DEBIAN_FRONTEND=noninteractive

# Runtime dependencies:
#   build-essential  — Verilator needs g++ at runtime to compile
#                      generated C++ into simulation binaries
#   perl             — Verilator's main script is a Perl wrapper
#   libfl2, zlib1g   — Verilator runtime linked libraries
#   libgoogle-perftools4 — optional but improves Verilator sim perf
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ca-certificates \
      wget \
      git \
      make \
      python3 \
      build-essential \
      perl \
      libfl2 \
      zlib1g \
			zlib1g-dev \
			ccache \
      libgoogle-perftools4 \
    && rm -rf /var/lib/apt/lists/*

# ---- Verilator: copy compiled binaries from builder ----
COPY --from=verilator-build /tmp/verilator-install/usr/local /usr/local

# ---- Surfer: download pre-built binary ----
# Surfer is a single Rust binary — no build needed, no dependencies
# Included for toolkit completeness; runs on host or via X11 forwarding
ARG TARGETARCH

RUN echo "Download Surfer on the Host machine!"
# RUN if [ "$TARGETARCH" = "arm64" ]; then \
#       SURFER_ARCH="aarch64"; \
#     else \
#       SURFER_ARCH="x86_64"; \
#     fi && \
#     wget -q "https://gitlab.com/surfer-project/surfer/-/releases/permalink/latest/downloads/surfer-linux-${SURFER_ARCH}" \
#       -O /usr/local/bin/surfer && \
#     chmod +x /usr/local/bin/surfer

# ============================================================
# 3. xPack RISC-V toolchain (multi-arch)
# ============================================================
RUN echo "Detected architecture: $TARGETARCH" && \
    if [ "$TARGETARCH" = "arm64" ]; then \
        wget -q https://github.com/xpack-dev-tools/riscv-none-elf-gcc-xpack/releases/download/v13.2.0-1/xpack-riscv-none-elf-gcc-13.2.0-1-linux-arm64.tar.gz; \
        tar -xf xpack-riscv-none-elf-gcc-13.2.0-1-linux-arm64.tar.gz -C /opt; \
        rm xpack-riscv-none-elf-gcc-13.2.0-1-linux-arm64.tar.gz; \
    else \
        wget -q https://github.com/xpack-dev-tools/riscv-none-elf-gcc-xpack/releases/download/v13.2.0-1/xpack-riscv-none-elf-gcc-13.2.0-1-linux-x64.tar.gz; \
        tar -xf xpack-riscv-none-elf-gcc-13.2.0-1-linux-x64.tar.gz -C /opt; \
        rm xpack-riscv-none-elf-gcc-13.2.0-1-linux-x64.tar.gz; \
    fi && \
    ln -s /opt/xpack-riscv-none-elf-gcc-13.2.0-1/bin/* /usr/local/bin/

# ============================================================
# 4. Your scripts + workspace
# ============================================================
RUN mkdir -p /in /out /tools /repo

COPY build_v2.sh /tools/build_v2.sh
COPY bin_to_hex_v2.py /tools/bin_to_hex_v2.py

RUN chmod +x /tools/*.sh

WORKDIR /tools

# ============================================================
# 5. Default to bash
# ============================================================
CMD ["/bin/bash"]