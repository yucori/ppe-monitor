@echo off
call .venv\Scripts\activate.bat
start "1" uvicorn backend.main:app --reload --port 8000
pushd "frontend"
start "2" npm run dev
popd
start http://localhost:5173
