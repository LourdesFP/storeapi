# FROM image python:3
FROM python:3

# Create dir to work and set it as working directory
WORKDIR /app

#Copy requirements.txt.
COPY requirements.txt .

#Install dependencies specified in requirements.txt.
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project source code from the local host to the filesystem of the container at the working directory.
COPY . .

# Expose port 
EXPOSE 5000

# Command to run the application
CMD [ "python3", "app.py"]