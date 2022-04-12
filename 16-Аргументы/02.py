import argparse, sys

parser = argparse.ArgumentParser()
parser.add_argument('--output', '-o', default = 'default')
args = parser.parse_args(sys.argv[1:])
print(args.output)