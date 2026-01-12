# Use official Python image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy python script
COPY Email_Spam_Detection_using_Machine_Learning.py .

# Install required ML libraries
RUN pip install --no-cache-dir numpy pandas scikit-learn

# Run the script
CMD ["python", "Email_Spam_Detection_using_Machine_Learning.py"]
