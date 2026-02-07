## Instructions to build a Container Image 

  * Base Image : `python:3.9-slim`
  * Copy over everything in the build context (streamlit_app) path
  * Installing Dependencies : `pip install -r requirements.txt`
  * Port: 8501 
  * Launch Command : `streamlit run app.py --server.address=0.0.0.0`

## Commands — stop old, rebuild, restart (compose) and short-run test:
docker ps
docker stop <container>
docker rm -f <container> 

docker logs <container> 
docker compose up -d
docker compose up --build # Rebuild images and start 

docker compose down
docker compose down -v

docker compose logs
docker compose logs <service>