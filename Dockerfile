# Pulling python docker image directly
FROM python:alpine3.17

# Changing the working directory
WORKDIR /app

# Adding possible missing dependencies for ARM servers
RUN apk update && apk add python3-dev \
                        gcc \
                        libc-dev \
                        git
# Copy the requirements.txt file into working directory and install the packages
COPY requirements.txt .
RUN pip3 install -U -r requirements.txt

# Copy all the files into working directory
COPY . .

# Start the bot
CMD ["python3", "-m", "mbot"]
