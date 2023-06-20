import argparse
from starter_core import grumfundler

def main():
    parser = argparse.ArgumentParser(description='Grumfundler')
    parser.add_argument('-g', '--grumfundler', default="Hello World!", help='Grumfundler')
    args = parser.parse_args()

    gf = grumfundler.Grumfundler(args.grumfundler)
    print(f'x: {gf}')

if __name__ == "__main__":
    main()