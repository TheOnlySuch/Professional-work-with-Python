from application.salary import calculate_salary
from application.db.people import get_employees
import datetime
import requests
if __name__ == '__main__':
    print(datetime.date.today())
    calculate_salary()
    get_employees()

