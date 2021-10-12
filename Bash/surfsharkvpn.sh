#!/bin/env bash

echo -ne '/n' | sudo surfshark-vpn attack || echo "VPN Connection Failed!"
