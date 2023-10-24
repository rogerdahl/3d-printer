#!/usr/bin/env python

"""Clean FreeCAD backup files (FCStd1)

Only remove FCStd1 files that have a corresponding FCStd file.
"""

import logging
import pathlib
import sys

log = logging.getLogger(__name__)


def main():
    logging.basicConfig(level=logging.DEBUG, format='%(levelname)s %(message)s')
    file_list = pathlib.Path('~/dev/3d').expanduser().rglob('*.FCStd')
    for file_path in file_list:
        bak_file_path = file_path.with_suffix('.FCStd1')
        if bak_file_path.exists():
            log.info('Removing %s', bak_file_path)
            bak_file_path.unlink()


if __name__ == '__main__':
    sys.exit(main())
