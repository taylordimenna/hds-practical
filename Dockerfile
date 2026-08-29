FROM condaforge/miniforge3
WORKDIR /app
COPY environment.yml .
RUN conda env create -f environment.yml
SHELL ["conda", "run", "-n", "hds-practical", "/bin/bash", "-c"]
COPY . .
CMD ["conda", "run", "--no-capture-output", "-n", "hds-practical", "python", "--version"]
