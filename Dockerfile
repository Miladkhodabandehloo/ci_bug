FROM python

WORKDIR /apps/docker_bug

COPY ./requirements.txt ./

RUN pip install -r requirements.txt

COPY ./ ./

CMD ["uwsgi", "--ini", "uwsgi.ini"]
