#!/bin/bash

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source $PROJECT_ROOT/../config.sh

case "$1" in
    install)
        source $PROJECT_ROOT/requirements/install.sh
        ;;
    setup)
        source $PROJECT_ROOT/mount_script/setup.sh
        ;;
    *)
        echo "Usage: $0 [install|setup|run|all]"
        exit 1
        ;;
esac

# source $PROJECT_ROOT/mount_script/setup.sh
