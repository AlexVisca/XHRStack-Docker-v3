#!/usr/bin/env bash

# add data through tha JSON endpoint
if [ -n "$APPLICATION_URL" ]; then
        ./wait-for-it.sh -h application -p 8000 -t 60 \
        -- curl "$APPLICATION_URL/add" \
                -X POST \
                -H 'Content-Type: application/json' \
                -d '{"bcit_id":"A00000001","name":"A"}'
fi