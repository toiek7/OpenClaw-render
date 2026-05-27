FROM ghcr.io/openclaw/openclaw:latest

EXPOSE 18789

# Force launch using headless environment variables and skip initial file checks
CMD ["node", "dist/index.js", "gateway", "--allow-unconfigured"]
