FROM gadgetron/ubuntu1604_cuda80_base

ARG GADGETRON_URL=https://github.com/gadgetron/gadgetron
ARG GADGETRON_COMMIT=06d2892808cd4ad7c2db6c114af78b4f1b6e0bed
ARG ISMRMRD_URL=https://github.com/ismrmrd/ismrmrd
ARG ISMRMRD_COMMIT=a2602dc53b70107190c67bba8d8a6f758b348ee9
ARG ISMRMRD_PYTHON_URL=https://github.com/ismrmrd/ismrmrd-python.git
ARG ISMRMRD_PYTHON_COMMIT=c38cd60c3a69416374c276b7820b0ffd70a6c4e0
ARG ISMRMRD_PYTHON_TOOLS_URL=https://github.com/ismrmrd/ismrmrd-python-tools
ARG ISMRMRD_PYTHON_TOOLS_COMMIT=faacc8a356f0090132bd198d1ddc5ef175402afc
ARG SIEMENS_TO_ISMRMRD_URL=https://github.com/ismrmrd/siemens_to_ismrmrd
ARG SIEMENS_TO_ISMRMRD_COMMIT=d4394603db695b0a55554e5f6317017df34a744c
ARG PHILIPS_TO_ISMRMRD_URL=https://github.com/ismrmrd/philips_to_ismrmrd
ARG PHILIPS_TO_ISMRMRD_COMMIT=0e38eb07243a3f287d57b59431d5662605f9b969

#ISMRMRD
RUN mkdir /opt/code
RUN cd /opt/code && \
    git clone ${ISMRMRD_URL} && \
    cd ismrmrd && git checkout ${ISMRMRD_COMMIT} && \
    mkdir build && \
    cd build && \
    cmake ../ && \
    make -j $(nproc) && \
    make install

#Fix compiler error with CUDA for now
RUN sed -i "s;#error -- unsupported GNU version! gcc versions later than 4.9 are not supported!;//#error -- unsupported GNU version! gcc versions later than 4.9 are not supported!;g" /usr/local/cuda/include/host_config.h

#GADGETRON
#RUN cd /opt/code && \
#    git clone ${GADGETRON_URL} && \
#    cd gadgetron && git checkout ${GADGETRON_COMMIT} && \

COPY . /opt/code/gadgetron

RUN cd /opt/code/gadgetron && \
    mkdir build && \
    cd build && \
    cmake ../ && \
    make -j $(nproc) && \
    make install && \
    /opt/code/gadgetron/docker/manifest --key .io.gadgetron.gadgetron.sha1 --value `git rev-parse HEAD` && \
    cp ${GADGETRON_HOME}/share/gadgetron/config/gadgetron.xml.example ${GADGETRON_HOME}/share/gadgetron/config/gadgetron.xml && \
    cp /opt/code/gadgetron/docker/start_supervisor /opt/ && \
    cp /opt/code/gadgetron/docker/supervisord.conf /opt/

#HASH for ISMRMRD
RUN cd /opt/code/ismrmrd && \
    /opt/code/gadgetron/docker/manifest --key .io.gadgetron.ismrmrd.sha1 --value `git rev-parse HEAD` 

#ISMRMRD PYTHON API
RUN cd /opt/code && \
    git clone ${ISMRMRD_PYTHON_URL} && \
    cd ismrmrd-python && git checkout ${ISMRMRD_PYTHON_COMMIT} && \
    python setup.py install && \
    /opt/code/gadgetron/docker/manifest --key .io.gadgetron.ismrmrdpython.sha1 --value `git rev-parse HEAD` 

#ISMRMRD PYTHON TOOLS
RUN cd /opt/code && \
    git clone ${ISMRMRD_PYTHON_TOOLS_URL} && \
    cd ismrmrd-python-tools && git checkout ${ISMRMRD_PYTHON_TOOLS_COMMIT} && \
    python setup.py install && \
    /opt/code/gadgetron/docker/manifest --key .io.gadgetron.ismrmrdpythontools.sha1 --value `git rev-parse HEAD` 

#SIEMENS_TO_ISMRMRD
RUN cd /opt/code && \
    git clone ${SIEMENS_TO_ISMRMRD_URL} && \
    cd siemens_to_ismrmrd && git checkout ${SIEMENS_TO_ISMRMRD_COMMIT} && \
    mkdir build && \
    cd build && \
    cmake ../ && \
    make -j $(nproc) && \
    make install && \
    /opt/code/gadgetron/docker/manifest --key .io.gadgetron.siemens_to_ismrmrd.sha1 --value `git rev-parse HEAD` 


#PHILIPS_TO_ISMRMRD
RUN cd /opt/code && \
    git clone ${PHILIPS_TO_ISMRMRD_URL} && \
    cd philips_to_ismrmrd && git checkout ${PHILIPS_TO_ISMRMRD_COMMIT} && \
    mkdir build && \
    cd build && \
    cmake ../ && \
    make -j $(nproc) && \
    make install && \
    /opt/code/gadgetron/docker/manifest --key .io.gadgetron.philips_to_ismrmrd.sha1 --value `git rev-parse HEAD` 


# Clean up packages.
RUN  apt-get clean && \
   rm -rf /var/lib/apt/lists/*

CMD ["/opt/start_supervisor"]
