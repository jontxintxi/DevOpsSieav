#!/bin/bash
sudo docker run --rm \
	   -v $(pwd):/wrk:Z \
	   -w /wrk \
	   jon/ubuntu-con-gcc:latest bash #./after.sh 
