#!/bin/bash
# Created by ElasticTunnel
# https://elastictunnel.com
# License: MIT
# If you have any questions or suggestions please contact us via our official site.

git log | grep Author: | sort | uniq | sed 's/Author: *//'