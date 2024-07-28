rm -rf app.zip
powershell -c Compress-Archive -Path "./bin" -DestinationPath app.zip
