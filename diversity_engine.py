import random

def get_random_hook() -> str:
    """
    Selects a psychological hook at random to be applied to the generation.
    """
    hooks = [
        "Create a 'Fear of Missing Out' (FOMO) angle emphasizing urgency.",
        "Use a 'Curiosity Gap' approach, withholding key information until the end.",
        "Employ 'Storytelling' focusing on a single human-centric narrative.",
        "Leverage 'Social Proof' by indicating others are already participating.",
        "Utilize the 'Reciprocity' principle by offering value upfront."
    ]
    return random.choice(hooks)
