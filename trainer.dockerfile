# Base image
FROM python:3.10-slim

# Install Python and essentials
RUN apt-get update && \
    apt-get install --no-install-recommends -y build-essential gcc && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy the necessary files
COPY requirements.txt requirements.txt
COPY pyproject.toml pyproject.toml
COPY project_winegrape_src_files/ project_winegrape_src_files/
COPY data/ data/

# Install Python dependencies

WORKDIR /
RUN --mount=type=cache,target=~/pip/.cache pip install -r requirements.txt --no-cache-dir
RUN pip install . --no-deps --no-cache-dir

# Set the entrypoint for the container
ENTRYPOINT ["python", "-u", "project_winegrape_src_files/train_model.py"]

# To run in docker:
# docker run --shm-size=1g --name experiment1 trainer:latest
# with wandb:
# docker run -e WANDB_API_KEY=<your-api-key> wandb:latest

# final:
# docker run --shm-size=1g -v $PWD/checkpoints/:/checkpoints/ -e WANDB_API_KEY=<your-api-key> --name experiment3 trainer:latest
