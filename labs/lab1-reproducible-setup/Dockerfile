FROM condaforge/miniforge3
WORKDIR /app
COPY environment.yml .
RUN conda env create -f environment.yml
SHELL ["conda", "run", "-n", "lab1-reproducible-setup", "/bin/bash", "-c"]
COPY . .
CMD ["conda", "run", "--no-capture-output", "-n", "lab1-reproducible-setup", "python", "--version"]
