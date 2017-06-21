FROM tensorflow/tensorflow:latest-gpu
# Various Python and C/build deps
RUN apt-get update && apt-get install -y \ 
    wget \
    build-essential \ 
    cmake \ 
    git \
    unzip \ 
    pkg-config \
    python-dev \ 
    python-opencv \ 
    libopencv-dev \ 
    libav-tools  \ 
    libjpeg-dev \ 
    libpng-dev \ 
    libtiff-dev \ 
    libjasper-dev \ 
    libgtk2.0-dev \ 
    python-numpy \ 
    python-pycurl \ 
    libatlas-base-dev \
    gfortran \
    webp \ 
    python-opencv \ 
    qt5-default \
    libvtk6-dev \ 
    zlib1g-dev 

COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /
RUN chmod +x /run_jupyter.sh
RUN pip install tflearn scikit-image scikit-learn keras
RUN pip install git+https://github.com/jakevdp/JSAnimation.git
RUN apt-get install -y swig
RUN pip install gym[all]
RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension
RUN git clone https://github.com/rmeertens/reinforcementlearning-tensorflow-tradr-summerschool.git /notebooks/tradr
RUN apt-get install -y xvfb

WORKDIR "/notebooks" 
CMD ["/run_jupyter.sh"]


