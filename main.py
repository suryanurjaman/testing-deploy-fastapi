import uvicorn
from fastapi import FastAPI, Response, UploadFile
from fastapi.staticfiles import StaticFiles
from fastapi.responses import FileResponse

# initiate an app
app = FastAPI()

# create a greeting message for an endpoint '/'
# we use neither path nor query parameters in this endpoint
@app.get('/')
async def greeting():
    return 'Hello World!'
  
# run the app on defined host and port
if __name__ == '__main__':
    uvicorn.run(app, host="0.0.0.0", port=8080)