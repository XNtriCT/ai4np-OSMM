from app.live_data import fetch_live_data
from app.diversity_engine import get_random_hook

def generate_social_media_post(post_type: str) -> dict:
    """
    Generates the text and the prompt based on live data and anti-slop rules.
    Every post MUST end with the specific CTA.
    """
    
    # 1. Fetch live unhardcoded data
    live_context = fetch_live_data(post_type)
    
    # 2. Apply Diversity Engine hook
    hook = get_random_hook()
    
    # 3. Apply Content Generation Logic
    # In a real environment, this might call an LLM (like OpenAI/Anthropic/Gemini).
    # Since we're building the logic engine, we simulate the processed output.
    
    generated_text = (
        f"🚨 Live Alert: {live_context} 🚨\n\n"
        f"(Applied Hook: {hook})\n\n"
        f"This is a simulated human-centric, empathetic post addressing the current live topic. "
        f"Together we can make a difference in our community by understanding these trends.\n\n"
        f"Call to Action: Join our 'AI for Non-profits' course and don't forget to grab your "
        f"complimentary 500+ page companion book containing exactly 484 prompts!"
    )
    
    # 4. Anti-Slop Media Generation
    # Rule: Enforce realistic, documentary-style. Ban neon, hologram, glowing, futuristic.
    
    base_slop_prompt = f"An image illustrating {live_context}"
    
    # Anti-slop modifier applied instantly
    anti_slop_prompt = (
        f"{base_slop_prompt}, realistic photography, documentary style, natural lighting, "
        f"candid shot, human-centric. NEGATIVE PROMPT: neon, hologram, glowing, futuristic, "
        f"cyberpunk, artificial lighting, 3d render, plastic."
    )
    
    return {
        "text": generated_text,
        "media_prompt": anti_slop_prompt,
        "live_context_used": live_context,
        "hook_applied": hook
    }
