# 使用Gitpod的基础镜像
FROM gitpod/workspace-full

# 安装Python 3.7
RUN sudo apt-get update && \
    sudo apt-get install -y software-properties-common && \
    sudo add-apt-repository -y ppa:deadsnakes/ppa && \
    sudo apt-get update && \
    sudo apt-get install -y python3.7 python3.7-dev python3.7-venv

# 安装pip
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3.7 get-pip.py && \
    rm get-pip.py

# 设置Python 3.7为默认的python3和python
RUN sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1 && \
    sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1

# 安装TensorFlow 1.15.0
RUN python3.7 -m pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow_cpu-1.15.0-cp37-cp37m-manylinux2010_x86_64.whl

# 清理
RUN sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/*