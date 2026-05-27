FROM ghcr.io/openclaw/openclaw:latest

EXPOSE 18789

# Run onboard first, then immediately start the continuous web server
CMD node dist/index.js onboard --non-interactive --mode local --gateway-port 18789 --gateway-bind lan --skip-skills --accept-risk && node dist/index.js start
