import re

class CartPage:
    def __init__(self):
        self.cart_elements = {
            "total_price": "id:cart-total"
            
        }

    def get_cart_element(self, element):
        return self.cart_elements[element]
    
    def get_single_price(self, text_to_parse):
        get_price = re.search("\$(\d+)", text_to_parse)
        if get_price == None:
            return -1
        return int(get_price.group(1))
    
    def get_multiple_prices(self, text_to_parse):
        prices = re.findall("\$(\d+)", text_to_parse)
        total = 0
        for i in range(len(prices)-1):
            total += int(prices[i])
        return total