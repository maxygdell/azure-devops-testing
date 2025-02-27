class BuyTicketsPage:
    def __init__(self):
        self.ticket_elements = {
            "adult": "#ticket-type > option:nth-child(1)",
            "child": "#ticket-type > option:nth-child(2)",
            "senior": "#ticket-type > option:nth-child(3)",
            "regular":"#ticket-category > option:nth-child(1)",
            "vip":"#ticket-category > option:nth-child(2)",
            "amount":"ticket-quantity"
        }

    def get_ticket_element(self, key):
        return self.ticket_elements[key]


