
class RegisterPage:
    def __init__(self):
        self.elements = {
            "username_field":"reg-username",
            "password_field":"reg-password",
        }

    def get_register_element(self, key):
        return self.elements[key]

