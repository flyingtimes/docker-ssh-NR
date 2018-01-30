#!/bin/sh
ssh -NR 0.0.0.0:$REMOTE_PORT:127.0.0.1:$SERVICE_PORT $REMOTE_USER@$REMOTE_HOST -i /app/$PEM_FILE -oStrictHostKeyChecking=no

