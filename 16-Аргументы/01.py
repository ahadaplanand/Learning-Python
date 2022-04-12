import sys, argparse

def main():
    if '--source' in sys.argv:
        source_index = sys.argv.index('--source') + 1
        if source_index < len(sys.argv):
            return sys.argv[source_index]

print(main())