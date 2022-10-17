#!/bin/bash

init() {
    touch Gemfile.lock
    chmod a+w Gemfile.lock

    touch .jekyll-metadata
    chmod a+w .jekyll-metadata

    docker-compose up
}

case $1 in 
    init)
        init
    ;;
    *)
        echo "Usage: $0 init"
    ;;
esac