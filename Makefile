all: run

build:
	docker build -t agassner/docker-streamlit:latest .

run: build
	docker run --rm -it -p 8501:8501 agassner/docker-streamlit:latest
