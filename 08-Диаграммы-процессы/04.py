import os, multiprocessing

def replace_text(file, old, new):
    if os.path.exists(file):
        if os.path.isfile(file):
            if file[-4:] == '.txt':
                argh = open(file, 'r')
                stroka = argh.read()
                argh.close()
                print(stroka)
                
                s = stroka.replace(old, new)
                argh = open(file, 'w')
                argh.write(s)
                argh.close()

                # argh = open('/home/sirius/SOMETHING/argh.txt', 'r')
                # stroka = argh.read()
                # argh.close()
                # print(stroka)
            else:
                print('Error 3')
        else:
            print('Error 2')
    else:
        print('Error 1')

def multi_replace_text(files, old, new):
    for file in files:
        process = multiprocessing.Process(target=replace_text, args=[file, old, new])
        process.start()

files = ['/home/sirius/SOMETHING/argh.txt', '/home/sirius/SOMETHING/argh1.txt', \
    '/home/sirius/SOMETHING/argh2.txt', '/home/sirius/SOMETHING/argh3.txt']
multi_replace_text(files, 'flower', 'city')