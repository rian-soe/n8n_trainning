# Use official n8n image
FROM n8nio/n8n:latest

# Render provides $PORT — tell n8n to use it
ENV N8N_PORT=$PORT
ENV N8N_PROTOCOL=https
ENV N8N_HOST=n8n-trainning.onrender.com
ENV N8N_EDITOR_BASE_URL=https://n8n-trainning.onrender.com
ENV N8N_EXTERNAL_HOOK_URL=https://n8n-trainning.onrender.com

# Expose Render's dynamic port
EXPOSE $PORT

# Run n8n on Render's assigned port
CMD ["n8n", "start", "--port", "$PORT"]

