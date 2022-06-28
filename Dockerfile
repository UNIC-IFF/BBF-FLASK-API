FROM python:3.7

# Create a directory for the source files
RUN mkdir /usr/src/app

# Set the working directory to /app
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /app
COPY . /usr/src/app

# Install any needed packages specified in requirements.txt
RUN pip3 install --trusted-host pypi.python.org -r requirements.txt
RUN apt-get update
#Expose Port
EXPOSE 5000

VOLUME /hostpipe

ENTRYPOINT ["python3", "/usr/src/app/app.py"]