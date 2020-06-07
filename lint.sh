#!/bin/bash

find . -type f -name '*.yml' | sed 's|\./||g' |  grep -v 'geerlingguy\|bertvv' | xargs ansible-lint
