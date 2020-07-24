#!/usr/bin/python3
import subprocess

from pathlib import Path
# pylint: disable=import-error

def main():
    Path('/Users/Shared/.com.googlecode.munki.checkandinstallatstartup').touch()
if __name__ == '__main__':
    main()
