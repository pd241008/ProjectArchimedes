.PHONY: setup run-backend run-frontend build-devtrace

setup:
	python3 -m venv venv
	./venv/bin/pip install -r requirements.txt
	cd frontend && npm install

build-devtrace:
	cd devtrace && cargo build --release

run-backend:
	./venv/bin/uvicorn backend.main:app --reload

run-frontend:
	cd frontend && npm run dev
