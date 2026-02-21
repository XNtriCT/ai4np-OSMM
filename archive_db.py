import sqlite3
from typing import List, Dict
import os

DB_PATH = "generation_archive.db"

def init_db():
    conn = sqlite3.connect(DB_PATH)
    cursor = conn.cursor()
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS archive_logs (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            post_type TEXT NOT NULL,
            live_context TEXT NOT NULL,
            hook TEXT NOT NULL,
            generated_text TEXT NOT NULL,
            media_prompt TEXT NOT NULL,
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        )
    ''')
    conn.commit()
    conn.close()

def save_generation(post_type: str, generation_data: dict):
    conn = sqlite3.connect(DB_PATH)
    cursor = conn.cursor()
    cursor.execute('''
        INSERT INTO archive_logs (post_type, live_context, hook, generated_text, media_prompt)
        VALUES (?, ?, ?, ?, ?)
    ''', (
        post_type, 
        generation_data['live_context_used'], 
        generation_data['hook_applied'], 
        generation_data['text'], 
        generation_data['media_prompt']
    ))
    conn.commit()
    conn.close()

def get_all_archives() -> List[Dict]:
    conn = sqlite3.connect(DB_PATH)
    conn.row_factory = sqlite3.Row
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM archive_logs ORDER BY created_at DESC')
    rows = cursor.fetchall()
    conn.close()
    
    return [dict(row) for row in rows]
