#!/bin/bash



url="https://proof.ovh.net/files/1Mb.dat"
curl ${url} -O                  # -O inherits the original name of the file


curl ${url} -o newFile          # downloads in the given file name
curl ${url} > newFile


curl -I ${url}                  # downloads the header only, and checks for the content
