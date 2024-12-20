#!/bin/bash



docker build -t gokul4510/dev:latest . # Build the dev image

docker tag gokul4510/dev:latest gokul4510/prod:latest # Tag the same image for prod
