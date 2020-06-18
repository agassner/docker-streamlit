FROM python:slim

WORKDIR /app
COPY ./requirements.txt /app/

RUN pip install -r requirements.txt

COPY ./app.py /app/

CMD [ "streamlit", "run", "app.py" ]