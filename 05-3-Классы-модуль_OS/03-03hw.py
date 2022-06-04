import os

def os_name():
    if os.uname().sysname == 'Linux':
        return True
    else:
        return False

def replace_text(file, old, new):
    if os.path.exists(file):
        if os.path.isfile(file):
            if file[-4:] == '.txt':
                argh = open('/home/sirius/SOMETHING/argh.txt', 'r')
                stroka = argh.read()
                argh.close()
                print(stroka)
                
                s = stroka.replace(old, new)
                argh = open('/home/sirius/SOMETHING/argh.txt', 'w')
                argh.write(s)
                argh.close()

                argh = open('/home/sirius/SOMETHING/argh.txt', 'r')
                stroka = argh.read()
                argh.close()
                print(stroka)
            else:
                print('Error 3')
        else:
            print('Error 2')
    else:
        print('Error 1')



print(os_name())
replace_text('/home/sirius/SOMETHING/argh.txt', 'flower', 'city')