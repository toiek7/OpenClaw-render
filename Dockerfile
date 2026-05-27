FROM ghcr.io/openclaw/openclaw:latest
EXPOSE 18789
CMD ["node", "dist/index.js"]
