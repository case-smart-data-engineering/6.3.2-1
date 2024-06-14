# 使用Gitpod的基础镜像
FROM gitpod/workspace-full

# 安装Python 3.6.9
RUN sudo apt-get update && \
    sudo apt-get install -y software-properties-common && \
    sudo add-apt-repository -y ppa:deadsnakes/ppa && \
    sudo apt-get update && \
    sudo apt-get install -y python3.6 python3.6-dev python3.6-venv

# 安装pip
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3.6 get-pip.py && \
    rm get-pip.py

# 设置Python 3.6为默认的python3和python
RUN sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1 && \
    sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 1

# 清理
RUN sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/*