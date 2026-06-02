FROM ghcr.io/openclaw/openclaw:latest

# Set standard application parameters natively
ENV NODE_ENV=production
ENV PORT=10000

EXPOSE 10000

# Execute natively using OpenClaw's own target scripts without flags
CMD ["node", "dist/index.js", "gateway"]
