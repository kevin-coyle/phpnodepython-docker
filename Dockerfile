FROM phpunit/phpunit:5.0.3
RUN apt-get update && apt-get install -y zip python-pip
RUN pip install boto3==1.3.0
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs
