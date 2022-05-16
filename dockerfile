FROM jupyter/minimal-notebook

RUN pip install scipy numpy matplotlib ipympl
USER root
RUN apt-get update && apt-get install -y cm-super
USER jovyan
