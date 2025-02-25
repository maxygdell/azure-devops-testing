class BasePage:
    def __init__(self):
        self.links = {
                "home": "home-nav",
                "register": "register-nav",
                "login": "login-nav",
                "buy_tickets": "tickets-nav",
                "book_safari": "safari-nav",
                "cart": "cart-nav"
            }
        
    def get_page_link(self, key):
        return self.links.get(key)

