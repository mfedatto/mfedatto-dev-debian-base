#!/bin/bash

docker buildx build --push --platform $1 --tag mfedatto/mfedatto-dev-base:beta .
