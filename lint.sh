#!/bin/bash

find . -type f -name '*.yml' | sed 's|\./||g' | xargs ansible-lint
