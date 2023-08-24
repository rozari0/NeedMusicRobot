# Pulling python docker image directly
FROM python:alpine3.17

# Changing the working directory
WORKDIR /app

# Copy the requirements.txt file into working directory and install the packages
COPY requirements.txt .
RUN pip3 install -U -r requirements.txt

# Copy all the files into working directory
COPY . .

CMD ["python3", "-m", "mbot"]
