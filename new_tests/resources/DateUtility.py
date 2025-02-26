from datetime import datetime

class DateUtility:
    def __init__(self):
        self.weekday = {
            "weekday": range(1,5),
            "weekend": range(6,7)
        }

    def get_todays_date(self):
        return f"00{datetime.today().strftime('%Y-%m-%d')}"

    def is_weekend(self, date_input=datetime.today().isoweekday()):
        return date_input > 5