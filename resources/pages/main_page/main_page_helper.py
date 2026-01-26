from robot.api.deco import keyword


@keyword('Get Main Page Link By Text')
def get_main_page_link_by_text(link_text):
    """Returns the locator for a main page link based on its text."""
    return f'xpath://a[@class="my-link" and text()="{link_text}"]'