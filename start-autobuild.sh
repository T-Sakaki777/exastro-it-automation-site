#!/bin/sh

ps -ef | grep -c [s]phinx_autobuild && kill -9 `ps -ef | grep "sh -c python -mphinx_autobuild"|awk '{print $2}'`

python -msphinx_autobuild /workspace/exastro-it-automation-docs/documentation /workspace/exastro-it-automation-docs/documentation/html