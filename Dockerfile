# Use a base image with Python and Jupyter pre-installed
# jupyter/scipy-notebook includes Python, Jupyter Lab, and many common scientific libraries
FROM jupyter/datascience-notebook:latest

# Set the working directory in the container
WORKDIR /app

# (Optional) Copy your project files into the container.
# This makes your local files available inside the container.
# COPY . /app

# Expose the default Jupyter port (8888). This is more for documentation
# and Docker Desktop's port mapping heuristics, as VS Code handles port forwarding.
EXPOSE 8888

# Command to run Jupyter Lab when the container starts.
# --ip=0.0.0.0 makes it accessible from outside the container.
# --no-browser prevents it from trying to open a browser inside the container.
# --allow-root is often needed when running in Docker.
CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--allow-root", "--ip=0.0.0.0"]