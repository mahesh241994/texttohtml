FROM ubuntu
LABEL Maintener is = "Mahesh"

RUN apt update
RUN apt install python3 -y
RUN apt install python3-pip
RUN apt install python3-venv
RUN mkdir -p app
COPY requirements.txt /app
# create a virtualenv

RUN python3 -m venv text2html
ENV PATH = "app/text2html/bin:$PATH"
RUN "app/text2html/bin/pip install -r requiremnets.txt
COPY . /app
WORKDIR /app
ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver","0.0.0.0:8000"]
