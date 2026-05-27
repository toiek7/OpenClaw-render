FROM ghcr.io/openclaw/openclaw:latest

EXPOSE 18789

# Direct execution of the running server without initial command scripting
CMD ["node", "dist/index.js", "gateway"]
