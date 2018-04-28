#! /usr/bin/env python2
import sys
from subprocess import check_output


def get_pass(account):
    return check_output("pass mail/" + account, shell=True).splitlines()[0]

if __name__ == '__main__':
    print get_pass(sys.argv[1])
