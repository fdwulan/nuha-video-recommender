# Base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy requirements.txt file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Set the entrypoint command
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
