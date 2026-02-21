from fastapi import APIRouter, HTTPException
from app.archive_db import get_all_archives

router = APIRouter()

@router.get("/")
async def list_archives():
    try:
        archives = get_all_archives()
        return {"status": "success", "data": archives}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))
