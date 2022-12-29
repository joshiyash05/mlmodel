FROM python:3.9-slim

EXPOSE 8080

WORKDIR /app
COPY . ./

ADD requirements.txt requirements.txt

RUN pip install -r requirements.txt


ENTRYPOINT ["streamlit", "run", "Fruits_Vegetable_Classification.py", "--server.port=8080", "--server.address=0.0.0.0"]