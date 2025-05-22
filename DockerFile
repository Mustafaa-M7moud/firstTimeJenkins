FROM python:alpine
WORKDIR /Project
COPY app.py .
CMD ["python", "app.py"]
