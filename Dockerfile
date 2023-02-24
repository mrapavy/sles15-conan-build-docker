ARG SLES_VERSION=15.4
FROM registry.suse.com/suse/sle15:${SLES_VERSION}

ARG CONAN_VERSION=1.59.0

# Build tools and Python
RUN zypper install -y gcc-c++ make cmake python3 && ln -s /usr/bin/python3 /usr/bin/python

# Pip
RUN python -m ensurepip --upgrade && python -m pip install --upgrade pip

# Conan
RUN pip install conan==${CONAN_VERSION}