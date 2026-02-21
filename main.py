from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.routers import generate, archive

app = FastAPI(
    title="OSMM AI for Non-profits Daily Feed Backend",
    description="Backend for Our Social Media Manager (OSMM) generating daily content with anti-slop rules.",
    version="1.0.0"
)

# Allow CORS for Flutter integration
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(generate.router, prefix="/generate", tags=["generate"])
app.include_router(archive.router, prefix="/archive", tags=["archive"])

@app.get("/")
def read_root():
    return {"message": "Welcome to OSMM Backend"}
