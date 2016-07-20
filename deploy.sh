#!/bin/bash

echo "Building..."
middleman build
echo "Syncing with s3..."
middleman s3_sync
echo "Invalidating Cloudfront..."
middleman invalidate
echo "Done!"
