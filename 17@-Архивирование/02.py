import tarfile, argparse, sys

def one():
    parser = argparse.ArgumentParser()
    parser.add_argument('--file', '-f')
    parser.add_argument('--archive', '-ar', default = 'archive.tar.gz')
    args = parser.parse_args(sys.argv[1:])
    f = open(args.file, 'w')
    s = 'test string'
    for i in range(10000):
        f.write(s + '\n')
    f.close() 

    t = tarfile.open(args.archive, 'w|gz')
    t.add(args.file)
    t.close()