ARG region

FROM 763104351884.dkr.ecr.us-west-2.amazonaws.com/pytorch-training:2.0.1-gpu-py310-cu118-ubuntu20.04-sagemaker
RUN mkdir /dependencies \
  && cd /dependencies \
  && wget https://smdataparallel.s3.amazonaws.com/binary/pytorch/2.0.1/cu118/2023-10-16/smdistributed_dataparallel-2.0.1-cp310-cp310-linux_x86_64.whl \
  && pip uninstall -y smdistributed-dataparallel \
  && pip install smdistributed_dataparallel-2.0.1-cp310-cp310-linux_x86_64.whl