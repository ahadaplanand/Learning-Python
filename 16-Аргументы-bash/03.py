import os, argparse, sys

def check(filepath, dirpath):
    if os.path.exists(filepath) and os.path.isfile(filepath):
        if os.path.exists(dirpath) and os.path.isdir(dirpath):
            return True
    return False

def make(filepath, dirpath):
    if check(filepath, dirpath):
        if dirpath[-1] != '/':
            dirpath += '/'
        with open(filepath, 'r') as file:
            varname = 1
            for line in file:
                newfile = open(f'{dirpath}file{varname}', 'w')
                newfile.write(line)
                newfile.close()
                varname += 1
    else:
        print('Wrong file path or directory path')

# def main():
#     parser = argparse.ArgumentParser()
#     parser.add_argument('-s', '--source')
#     parser.add_argument('-o', '--output')
#     args = parser.parse_args(sys.argv[1:])

make('/home/vealniycahko/Study/file_main', '/home/vealniycahko/Study')