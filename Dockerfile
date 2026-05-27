FROM ghcr.io/openclaw/openclaw:latest

EXPOSE 18789

# Using the "lan" keyword tells OpenClaw to safely expose port 18789 on Render
CMD ["node", "dist/index.js", "onboard", "--non-interactive", "--mode", "local", "--gateway-port", "18789", "--gateway-bind", "lan", "--skip-skills", "--accept-risk"]
