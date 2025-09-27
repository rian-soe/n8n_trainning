# Use official n8n image
FROM n8nio/n8n:latest

# Render automatically sets $PORT for web services
ENV N8N_PORT=$PORT
EXPOSE $PORT
