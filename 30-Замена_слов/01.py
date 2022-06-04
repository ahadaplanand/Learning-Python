import argparse
import sys
import os

parser = argparse.ArgumentParser()
parser.add_argument('--sources', '-s')
parser.add_argument('--words', '-w')
args = parser.parse_args(sys.argv[1:])

def file_censor(path, words):
    path = path[:-1]
    words = [word[:-1] for word in words]
    if os.path.isfile(path):
        file = open(path, 'r')
        text = file.read()
        for word in words:
            text = text.replace(word, '*')
        file.close()

        file = open(path, 'w')
        file.write(text)
        file.close()
    else:
        print('This file does not exists: ', path)

def main():
    if args.words and args.sources:
        if os.path.isfile(args.sources):
            if os.path.isfile(args.words):
                words = []
                with open(args.words, 'r') as words_file:
                    words = words_file.readlines()
                if not words:
                    print('No key words were spetified...')
                    return
                else:
                    with open(args.sources, 'r') as source_file:
                        for path in source_file:
                            file_censor(path, words)
            else:
                print('Invalid words file...')
        else:
            print('Invalid sources file...')
    else:
        print('Problems with arguments...')

if __name__ == '__main__':
    main()