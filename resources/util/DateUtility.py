from datetime import datetime, timedelta

class DateUtility:
    def __init__(self):
        self.weekday = {
            "weekday": range(1,5),
            "weekend": range(6,7)
        }

    def get_todays_date(self):
        return f"00{datetime.today().strftime('%Y-%m-%d')}"
    
    def get_date_type(self, date_type):
        if date_type == "weekend" and not self.is_weekend():
                return f'00{self.get_next_weekend()}'
        if self.is_weekend() and date_type != "weekend":
            return f'00{self.get_next_weekday()}'
        return f'00{self.get_todays_date()}'

    def is_weekend(self, date_input=datetime.today().isoweekday()):
        return date_input > 5
    
    def get_next_weekend(self, date_input=datetime.today()):
        weekend = 6
        days_until_weekend = weekend - date_input.isoweekday()
        return (date_input + timedelta(days = days_until_weekend)).strftime('%Y-%m-%d')
    
    def get_next_weekday(self, date_input=datetime.today()):
        return (date_input + timedelta(days = 8 - date_input.isoweekday())).strftime('%Y-%m-%d')


