import subprocess, argparse, sys

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--oid', '-o', default = '.')
    parser.add_argument('--file', '-f')
    args = parser.parse_args(sys.argv[1:])

    snmpwalk = subprocess.getoutput(f'snmpwalk -v 2c -c sirius 192.168.254.18 {args.oid}')
    file = open(f'{args.file}.txt', 'w')
    for s in snmpwalk:
        file.write(s)

main()