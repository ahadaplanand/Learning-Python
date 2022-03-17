import sys

class SourceNotFound(Exception):
    pass

def main(args):
    if '--source' in args:
        source_index = args.index('--source') + 1
        if source_index < len(args):
            return args[source_index]
    raise SourceNotFound

print(main(sys.argv))