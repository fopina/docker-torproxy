#!/usr/bin/env python

import argparse
import os

def parser():
    parser = argparse.ArgumentParser()
    return parser


def main(argv=None):
    args = parser().parse_args(argv)
    os.execv('/bin/s6-svscan', ['/bin/s6-svscan', '/etc/s6'])

if __name__ == '__main__':
    main()
