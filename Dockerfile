dev:
  command: |
    apt-get update
    apt-get install -y libwebp libuuid-dev ffmpeg imagemagick wget git
    npm install -g typescript pm2
  sync:
    - .:/app
