# Build Server
echo "Building Server..."

# remove old files
rm -rf bin/server

cd release-display-server
dotnet publish -r win-x64 --self-contained

# copy files
mkdir ../bin/server
cp bin/Release/net8.0/win-x64/publish/* ../bin/server

echo "Server built complete."
