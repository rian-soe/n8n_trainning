# Use official n8n image
FROM n8nio/n8n:latest

# Render provides $PORT, so we must use it
ENV N8N_PORT=$PORT
EXPOSE $PORT

CMD ["sh", "-c", "n8n start --port $PORT"]


