FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt .
COPY entrypoint.sh .

#ENV PYTHONDONTWRITEBYTECODE 1
#ENV PYTHONUNBUFFERED 1

#RUN pip install --upgrade pip

RUN pip install -r requirements.txt

RUN ["chmod", "+x", "entrypoint.sh"]

COPY . .
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]