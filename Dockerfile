FROM ubuntu
RUN apt-get update && apt-get install -y python3 && apt-get install -y pipx
RUN pipx install flask                   
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py pipx run flask run --host=0.0.0.0 --port=8080
