import calendar
import random
import string

def iter_records(records, month, year):
    c = calendar.Calendar()
    result = []
    for dat, record in zip(c.itermonthdays(year, month), records):
        result.append(str(dat) + ' ' + record) # нужно перевести 'dat' в какой-нибудь формат
        records.remove(record)
    return records, result

def main(records, month, year):
    formatted = []
    while records:
        records, result = iter_records(records, month, year)
        formatted.extend(result)
        if month < 12:
            month += 1
        else:
            year += 1
            month = 1
    return formatted

records = [random.choice(string.ascii_letters) for i in range(100)]
print(main(records, 10, 2022))