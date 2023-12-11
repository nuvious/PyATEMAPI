FROM python:3.9

WORKDIR /app
COPY requirements.txt /app/
RUN pip3 install -r /app/requirements.txt
COPY . .

EXPOSE 5555

ENTRYPOINT ["/bin/sh"]
CMD ["entrypoint.sh"]
