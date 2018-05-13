#!/usr/bin/env bash

if [ -d src ]; then
    echo "Project already created!"
    exit 0
fi

mkdir -p src/{main,test}/{java,resources,scala}
mkdir lib project target

echo "Project created successfully!"
