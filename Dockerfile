FROM python:3.11-rc-slim

WORKDIR /app

COPY . run.py /app/

# hadolint ignore=DL3013,DL3042
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 5000

CMD [ "python3", "run.py"]

error