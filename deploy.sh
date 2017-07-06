#!/bin/bash

echo "Building..."
bundle exec middleman build
echo "Syncing with s3..."
bundle exec middleman s3_sync
echo "Invalidating Cloudfront..."
bundle exec middleman invalidate
echo "Done!"
