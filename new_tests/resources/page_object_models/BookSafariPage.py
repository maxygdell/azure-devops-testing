from datetime import datetime
import re

class BookSafariPage: 

    def __init__(self):
        self.elements = {
            "safari_date": "safari-date",
            "safari_type": "#safari-type > option:nth-child(3)",
            "cart_button": "#safari-form > button"
        }

    def get_safari_elements(self, key):
        return self.elements[key]
    
    def get_single_price(self, text_to_parse):
        get_price = re.search("\$(\d+)", text_to_parse)
        return int(get_price.group(1))
    
    def get_multiple_prices(self, text_to_parse):
        prices = re.findall("\$(\d+)", text_to_parse)
        total = 0
        for i in range(len(prices)-1):
            total += int(prices[i])
        return total
    
    def get_todays_date(self):
        return f"00{datetime.today().strftime('%Y-%m-%d')}"