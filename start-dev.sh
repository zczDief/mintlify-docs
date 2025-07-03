#!/bin/bash

# Mintlify Dev Server Startup Script
# Handles post-restart redirect issues

echo "🧹 Clearing Mintlify cache..."
rm -rf ~/.mintlify/mint/.next 2>/dev/null
rm -rf .next 2>/dev/null

echo "⏳ Waiting for network initialization..."
sleep 5

echo "🚀 Starting Mintlify dev server..."
mint dev
