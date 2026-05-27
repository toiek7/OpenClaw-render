FROM ghcr.io/openclaw/openclaw:latest

EXPOSE 18789

# Run headless onboarding using Render's environment variables
CMD ["node", "dist/index.js", "onboard", "--non-interactive", "--mode", "local", "--gateway-port", "18789", "--gateway-bind", "0.0.0.0", "--skip-skills", "--accept-risk"]
