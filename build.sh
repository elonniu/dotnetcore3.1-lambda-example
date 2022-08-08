#!/bin/bash
WD=$PWD
cd dotnetcore-lambda-example
rm -rf bin
dotnet restore
dotnet publish
cd bin/Debug/netcoreapp3.1/publish && zip -r package.zip *
cd $WD
