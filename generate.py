from fastapi import APIRouter, HTTPException
from pydantic import BaseModel
from app.content_generator import generate_social_media_post
from app.archive_db import save_generation, init_db

router = APIRouter()

# Initialize the db on module load to ensure it exists
init_db()

class GenerateRequest(BaseModel):
    post_type: str # e.g., 'daily_feed', 'special_day', 'innovative', 'trendjacking'

@router.post("/")
async def create_post(request: GenerateRequest):
    try:
        # 1. Pipeline execution
        result = generate_social_media_post(request.post_type)
        
        # 2. Archive the output
        save_generation(request.post_type, result)
        
        return {"status": "success", "data": result}
        
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
