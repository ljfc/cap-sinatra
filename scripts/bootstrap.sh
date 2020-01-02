#!/bin/bash

ssh do-cap "mkdir -p ~/config"
scp ./config/* do-cap:~/config

scp ./scripts/setup.sh do-cap:~/
ssh do-cap "~/setup.sh"

