# Use the official n8n image
FROM n8nio/n8n:latest

# Set n8n environment variables (Render injects PORT automatically)
ENV N8N_PROTOCOL=https
ENV N8N_HOST=n8n-trainning.onrender.com
ENV N8N_EDITOR_BASE_URL=https://n8n-trainning.onrender.com
ENV N8N_EXTERNAL_HOOK_URL=https://n8n-trainning.onrender.com

# n8n defaults to 5678, Render will remap it to $PORT
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]

