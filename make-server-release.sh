# Build Server
echo "Building Server..."

# remove old files
rm -rf bin/server

cd release-display-server
dotnet build -c Release

# copy files
mkdir ../bin/server
cp bin/Release/net8.0/appsettings.json ../bin/server/appsettings.json
cp bin/Release/net8.0/Microsoft.OpenApi.dll ../bin/server/Microsoft.OpenApi.dll
cp bin/Release/net8.0/Microsoft.AspNetCore.OpenApi.dll ../bin/server/Microsoft.AspNetCore.OpenApi.dll
cp bin/Release/net8.0/package-lock.json ../bin/server/package-lock.json
cp bin/Release/net8.0/vue_gamepad_server.dll ../bin/server/vue_gamepad_server.dll
cp bin/Release/net8.0/vue_gamepad_server.exe ../bin/server/vue_gamepad_server.exe
cp bin/Release/net8.0/vue_gamepad_server.runtimeconfig.json ../bin/server/vue_gamepad_server.runtimeconfig.json
cp bin/Release/net8.0/Swashbuckle.AspNetCore.Swagger.dll ../bin/server/Swashbuckle.AspNetCore.Swagger.dll
cp bin/Release/net8.0/Swashbuckle.AspNetCore.SwaggerGen.dll ../bin/server/Swashbuckle.AspNetCore.SwaggerGen.dll
cp bin/Release/net8.0/Swashbuckle.AspNetCore.SwaggerUI.dll ../bin/server/Swashbuckle.AspNetCore.SwaggerUI.dll
cp bin/Release/net8.0/vue_gamepad_server.deps.json ../bin/server/vue_gamepad_server.deps.json

echo "Server built complete."
