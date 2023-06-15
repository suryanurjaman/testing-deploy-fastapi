# get python image
FROM python:3.10.10

# copy necessary files for the container
COPY requirements.txt .
COPY main.py .

RUN pip install --upgrade pip

RUN apt-get update && \
    apt-get install -y libgl1-mesa-dev && \
    pip install opencv-python
# install dependencies
RUN pip install -r requirements.txt

# expose port
EXPOSE 8080

# finally run the application inside the container 
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]