FROM python:3.11-slim
WORKDIR /app
ENV OPENBLAS_NUM_THREADS=1 \
	OMP_NUM_THREADS=1 \
	MKL_NUM_THREADS=1 \
	NUMEXPR_NUM_THREADS=1 \
	BLAS_NUM_THREADS=1
COPY src/api/ .
RUN pip install --no-cache-dir --progress-bar off -r requirements.txt
COPY models/trained/*.pkl models/trained/
EXPOSE 8000
CMD [ "uvicorn",  "main:app",  "--host",  "0.0.0.0",  "--port",  "8000" ]