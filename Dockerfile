# get python image
FROM python:3.8-buster

# copy necessary files for the container
COPY requirements.txt .
COPY main.py .

# install dependencies
RUN pip install -r requirements.txt

# expose port
EXPOSE 3000

# finally run the application inside the container 
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "3000"]