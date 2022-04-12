import os

def sort_files(dir):
    files = os.listdir(dir)
    # dict_files = {}
    # for fn in files:
    #     dict_files[fn] = (os.stst(fn)).st_mtime
    dict_files = {fn:(os.stat(fn)).st_mtime for fn in files}
    items = dict_files.items()
    items = sorted(items, key = lambda x: x[1])
    for pair in items:
        print(pair[0])

sort_files('D:\Study\Инженерная компьютерная графика\Компас')