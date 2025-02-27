
class LoginPage:
    def __init__(self):
        self.login_elements = {
            "username_field":"login-username",
            "password_field":"login-password",
            "login_button":"Login"
        }

    def get_login_element(self, key):
        return self.login_elements[key]