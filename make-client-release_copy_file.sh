# remove old files
rm -rf bin/client


# copy files
mkdir bin/client

cd release-display-client/dist_electron
cp -r *.exe ../../bin/client

echo "Client output copy complete."
