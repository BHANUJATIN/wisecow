# Use a base image with Ubuntu Linux and bash installed
FROM ubuntu:latest

# Install prerequisites
RUN apt-get update && apt-get install -y fortune cowsay netcat

# Copy the wisecow.sh script into the container
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Set execute permissions for the script
RUN chmod +x /usr/local/bin/wisecow.sh

# Modify PATH environment variable to include /usr/games
ENV PATH="${PATH}:/usr/games"

# Expose the default server port
EXPOSE 4499

# Run the wisecow.sh script when the container starts
CMD ["/usr/local/bin/wisecow.sh"]
