import argparse, sys

parser = argparse.ArgumentParser()
parser.add_argument('-o', '--output')
args = parser.parse_args(sys.argv[1:])
print(args.output)