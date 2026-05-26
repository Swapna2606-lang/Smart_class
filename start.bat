@echo off
echo ==================================================================
echo Starting ClassroomIQ - Real-Time Classroom Intelligence System
echo ==================================================================

echo.
echo Starting Spring Boot backend on port 8080...
start "Backend" cmd /c "cd backend && mvn spring-boot:run"

echo.
echo Waiting for backend to initialize...
timeout /t 15 /nobreak > nul

echo.
echo Starting React frontend on port 5173...
start "Frontend" cmd /c "cd frontend && npm install && npm run dev"

echo.
echo ClassroomIQ is starting up!
echo    Frontend: http://localhost:5173
echo    Backend:  http://localhost:8080
echo    API Docs: http://localhost:8080/api/sessions
echo    H2 DB:    http://localhost:8080/h2-console
echo.
echo Two new windows have been opened for the backend and frontend.
echo To stop the services, simply close those command prompt windows.
