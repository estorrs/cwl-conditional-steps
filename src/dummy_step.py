import argparse
import logging

logging.basicConfig(format='%(asctime)s - %(message)s', level=logging.INFO)

parser = argparse.ArgumentParser()

parser.add_argument('n_outputs', type=int,
    help='How many output files to be created')

args = parser.parse_args()


def main():
    for i in range(args.n_outputs):
        f = open(f'dummy_output_{i}.txt', 'w')
        f.close()


if __name__ == '__main__':
    main()
