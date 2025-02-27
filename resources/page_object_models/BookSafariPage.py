class BookSafariPage: 

    def __init__(self):
        self.elements = {
            "safari_date": "safari-date",
            "safari_type": "#safari-type > option:nth-child(3)",
            "cart_button": "#safari-form > button"
        }

    def get_safari_elements(self, key):
        return self.elements[key]
