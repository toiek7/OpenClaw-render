FROM ghcr.io/openclaw/openclaw:latest

# Reset the image entrypoint so Render can pass direct arguments to Node
ENTRYPOINT []

# Explicitly use production flags and set the fallback port
ENV NODE_ENV=production
ENV PORT=10000

EXPOSE 10000

# Execute Node directly bypassing the strict openclaw CLI check
CMD ["node", "dist/index.js", "gateway", "--allow-unconfigured", "--host", "0.0.0.0", "--port", "10000"]
