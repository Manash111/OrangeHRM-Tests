### login details

input_username_login = "xpath://input[@placeholder='Username']"
input_passowrd_login = "xpath://input[@placeholder='Password']"

btn_login = "xpath://button[normalize-space()='Login']"

dropdown_logout = "xpath://li[contains(@class, 'oxd-userdropdown')]"
btn_logout = "xpath://a[text()='Logout']"

element_loginForm = "xpath://div[@class='orangehrm-login-form']"

link_forgotPassword = "xpath://p[text()='Forgot your password? ']"
input_username_forgotPassword = input_username_login

btn_reset = "xpath://button[normalize-space()='Reset Password']"
forgotPasswordMessage = "Reset Password link sent successfully"


#### Dashboard Details

DASHBOARD_HEADER = "xpath://h6[normalize-space()='Dashboard']"
dashboard_WIDGET = "xpath://div[@class = 'oxd-sheet oxd-sheet--rounded oxd-sheet--white orangehrm-dashboard-widget']"


### Admin
link_admin = "xpath://span[text()='Admin']"
input_username_admin = "xpath://div[@class='oxd-input-group oxd-input-field-bottom-space']//div//input[@class='oxd-input oxd-input--active']"
dropdown_UserRole_admin = "xpath://div[@class = 'oxd-select-text oxd-select-text--active']//div[@class ='oxd-select-text-input']"
input_employeeName_admin = "xpath://input[@placeholder='Type for hints...']"
dropdown_status_admin = "xpath://div[4]//div[1]//div[2]//div[1]//div[1]//div[1]"
btn_search = "xpath://button[normalize-space()='Search']"


btn_alert_delete = "xpath://button[normalize-space()='Yes, Delete']"
btn_alert_cancel = "xpath://button[normalize-space()='No, Cancel']"


element_footer = "xpath://div[@class='oxd-layout-footer']//p[2]"
element_footer_link = "xpath://a[normalize-space()='OrangeHRM, Inc']"








## Webtables
#
# # User Management Page
# USER_MGMT_MENU = "id:menu_admin_UserManagement"
# USER_MGMT_TAB = "id:menu_admin_viewSystemUsers"
# ADD_BUTTON = "id:btnAdd"
# DELETE_BUTTON = "id:btnDelete"
# SAVE_BUTTON = "id:btnSave"
#
# # User Form Fields
# USERNAME_FIELD = "id:systemUser_userName"
# USER_ROLE_DROPDOWN = "id:systemUser_userType"
# EMPLOYEE_NAME_FIELD = "id:systemUser_employeeName_empName"
# STATUS_DROPDOWN = "id:systemUser_status"
# PASSWORD_FIELD = "id:systemUser_password"
# CONFIRM_PASSWORD_FIELD = "id:systemUser_confirmPassword"
#
# # User Table
# USER_TABLE = "id:resultTable"
# TABLE_ROWS = "xpath://table[@id='resultTable']/tbody/tr"
# PAGINATION_NEXT = "xpath://a[text()='Next']"
# TABLE_HEADERS = "xpath://table[@id='resultTable']/thead//th"