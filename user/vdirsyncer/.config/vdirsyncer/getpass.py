#! /usr/bin/env python
import sys
from subprocess import check_output


def get_pass(account):
    return check_output("pass nextcloud/" + account, shell=True).splitlines()[0]

if __name__ == '__main__':
    print(get_pass(sys.argv[1]).decode('utf-8'))
