# Create Dockerfile for streamlit app
FROM python:3.8-slim
WORKDIR /app
COPY streamlit_app /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8501
CMD ["streamlit", "run", "streamlit_app.py"]