FROM continuumio/miniconda3

USER root

RUN pip install --proxy=${http_proxy}\
    psycopg2-binary \
    minio \
    jupyter -U && pip install jupyterlab


RUN pip install jupyter_contrib_nbextensions\
    && jupyter contrib nbextension install 

ENV NODE_OPTIONS="--max-old-space-size=4096"
RUN jupyter labextension install nbdime-jupyterlab --no-build && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build && \
    jupyter labextension install jupyterlab_bokeh --no-build && \
    jupyter labextension install bqplot --no-build && \
    jupyter labextension install @jupyterlab/vega3-extension --no-build && \
    jupyter labextension install @jupyterlab/git --no-build && \
    jupyter labextension install @jupyterlab/hub-extension --no-build && \
    jupyter labextension install jupyterlab_tensorboard --no-build && \
    jupyter labextension install jupyterlab-kernelspy --no-build && \
    jupyter labextension install @jupyterlab/plotly-extension --no-build && \
    jupyter labextension install jupyterlab-chart-editor --no-build && \
    jupyter labextension install plotlywidget --no-build && \
    jupyter labextension install @jupyterlab/latex --no-build && \
    jupyter labextension install jupyter-matplotlib --no-build && \
    jupyter labextension install jupyterlab-drawio --no-build && \
    jupyter labextension install jupyter-leaflet --no-build && \
    jupyter labextension install qgrid --no-build && \
    jupyter lab build && \
        jupyter lab clean && \
        jlpm cache clean && \
        npm cache clean --force && \
        rm -rf $HOME/.node-gyp && \
        rm -rf $HOME/.local && \
    fix-permissions $CONDA_DIR $HOME

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root", "--NotebookApp.token=$$JUPYTER_PASSWORD"]