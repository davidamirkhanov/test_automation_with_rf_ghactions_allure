from robot.api.deco import keyword
import re
from robot.libraries.BuiltIn import BuiltIn

@keyword('Get Username And Password From The Page')
def get_username_and_password_from_page():
    """Returns the username and password from the login page."""
    page = BuiltIn().get_library_instance('SeleniumLibrary')
    username_raw = page.get_text('xpath://li[starts-with(text(), "Username")]')
    password_raw = page.get_text('xpath://li[starts-with(text(), "Password")]')

    username = re.search(r'Username: (.+)', username_raw).group(1)
    password = re.search(r'Password: (.+)', password_raw).group(1)

    print("Username:", username)
    print("Password:", password)
    return username, password