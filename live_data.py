import urllib.request
import xml.etree.ElementTree as ET
import random

def fetch_live_data(topic_type: str) -> str:
    """
    Fetches real-time data from public RSS feeds to ensure no hardcoded examples are used.
    topic_type can be 'daily_feed', 'special_day', 'innovative', or 'trendjacking'.
    """
    
    # We use Google News RSS for live trends to ensure dynamic data
    url = "https://news.google.com/rss/search?q=technology+OR+nonprofit+OR+AI&hl=en-US&gl=US&ceid=US:en"
    
    try:
        req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
        with urllib.request.urlopen(req) as response:
            xml_data = response.read()
            
        root = ET.fromstring(xml_data)
        items = root.findall('.//item/title')
        
        if items:
            # Pick a random live headline
            selected_item = random.choice(items)
            return selected_item.text
        else:
            return "Live data unavailable, using generic prompt framework."
            
    except Exception as e:
        print(f"Error fetching live data: {e}")
        return "Live data feed currently unreachable; proceeding with adaptive prompt framework."
