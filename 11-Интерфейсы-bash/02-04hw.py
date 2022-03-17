import subprocess
import os

def func():
    history = (subprocess.getoutput('cat ~/.bash_history')).split('\n')
    for ii in history[::-1]:
        print(ii + '   (y/n/q)?')
        inp = input()
        if inp == 'y':
            os.system(ii)
        elif inp == 'n':
            continue
        elif inp == 'q':
            break
        else:
            print('Ошибка ввода!')
            break

func()