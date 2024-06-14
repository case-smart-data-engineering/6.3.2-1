# 使用Gitpod的基础镜像
FROM gitpod/workspace-full

# 安装Python 3.6.9
RUN sudo apt-get update && \
    sudo apt-get install -y python3.6 python3.6-dev python3.6-venv && \
    sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1

# 安装pip
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3.6 get-pip.py

# 清理
RUN sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/*