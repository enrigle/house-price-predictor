FROM python:3.11-slim
WORKDIR /app
COPY  app.py requirements.txt ./
RUN pip install --no-cache-dir --progress-bar off -r requirements.txt
EXPOSE 8501
ENV PYTHONUNBUFFERED=1
CMD  ["python", "-m", "streamlit", "run", "app.py", "--server.address=0.0.0.0", "--server.fileWatcherType=none"]