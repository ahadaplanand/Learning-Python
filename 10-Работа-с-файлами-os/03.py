import filecmp, hashlib, os

def dub_del(dir1, dir2):
    same = filecmp.dircmp(dir1, dir2).same_files
    for fn in same:
        f1, f2 = '', ''
        with open(dir1 + '/' + fn, 'r') as f:
            f1 = f.read()
        with open(dir2 + '/' + fn, 'r') as f:
            f2 = f.read()
        hash1 = hashlib.sha224(f1.encode('utf-8')).hexdigest()
        hash2 = hashlib.sha224(f2.encode('utf-8')).hexdigest()
        if hash1 == hash2:
            ans1 = input('Вы уврены, что хотитие удалить одинаковые файлы (y/n)? ')
            if ans1 == 'y':
                ans2 = str(input(f'Выберите директорию, из которой нужно удалить файл:\n\
                    {dir1} или {dir2} (Введите 1/2) '))
                if ans2 == '1':
                    os.remove(dir1 + '/' + fn)
                elif ans2 == '2':
                    os.remove(dir2 + '/' + fn)
                else:
                    print('Вы ввели недопустимое значение!')
            else:
                print('Вы отменили удаление!')

dub_del('D:\Study\Папка1', 'D:\Study\Папка2')