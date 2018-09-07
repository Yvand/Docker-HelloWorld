# Use an official Python runtime as a base image
FROM python:3.7-slim

# Create /app and set the working directory to it
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME Yvan

# Run app.py when the container launches
CMD ["python", "app.py"]