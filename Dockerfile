FROM ghcr.io/openclaw/openclaw:latest

EXPOSE 18789

# Tell OpenClaw to skip the terminal interactive onboarding process
CMD ["node", "dist/index.js", "onboard", "--non-interactive", "--accept-risk"]
