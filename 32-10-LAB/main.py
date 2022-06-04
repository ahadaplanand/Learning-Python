import os, sys, argparse, sh


parser = argparse.ArgumentParser()
parser.add_argument('--folder', '-f')
args = parser.parse_args(sys.argv[1:])

def main(folder):
    all_dirs = []
    all_files = []
    all_extensions = {}
    for root, dirs, files in os.walk(folder):
        all_dirs.append(cut_dir(root, dirs, files))
        for f in files:
            all_files.append(cut_file(f))
    for f in all_files:
        if f[0] in all_extensions.keys():
            all_extensions[f[0]].append(f[1])
        else:
            all_extensions[f[0]] = [f[1]]
    return all_dirs, all_extensions

def cut_dir(root, dirs, files):
    complete = []
    complete.append(root[root.rfind('/')+1:])
    complete.append(len(dirs))
    complete.append(len(files))
    complete.append(dir_size(root))
    return complete

def cut_file(entire):
    complete = []
    if '.' in entire:
        complete.append(entire[entire.rfind('.')+1:])
        complete.append(entire[:entire.rfind('.')])
    else:
        complete.append('None')
        complete.append(entire)
    return complete

def dir_size(root):
    size = sh.du('-s', '-h', root)
    size = size.split('\t')[0]
    return size

def pretty_print(dirs, extensions):
    print('\n---directories------------------------------------------')
    print('{0:19s} {1:10s} {2:11s} {3:10s}'.format('TITLE', 'FOLDERS', 'FILES', 'SIZE'))
    for d in dirs:
        if len(d[0]) < 20:
            full_str = '{:20s} '.format(d[0])
        else:
            full_str = '{:17s}... '.format(d[0][:17])
        full_str += '{:10s} {:10s} {:10s}'.format(str(d[1]), str(d[2]), d[3])
        print(full_str)        
    print('\n---extensions-------------------------------------------')
    print('{0:14s} {1:11s} {2:10s}'.format('EXTENSION', 'COUNT', 'TITLES'))
    for f in extensions.keys():
        full_str = '{:15s} {:10s} '.format(f, str(len(extensions[f])))
        cou = 0
        for ff in extensions[f]:
            if cou < 4:
                full_str += '{}  '.format(ff)
                cou += 1
            else:
                full_str += '{}  | ETC...'.format(ff)
                break
        print(full_str)
    print()
    
result = main(args.folder)
directories = result[0]
extensions = result[1]
pretty_print(directories, extensions)

# python3 main.py -f /home/vealniycahko/Study/Python/32-10-LAB/Findings