import os
import csv

from click import (
    command, echo, style, option, Choice,
    IntRange, confirm
)

options = """
What do you want to install?
1.- Install Docker
2.- Install docker-compose
3.- Install DBeaver
4.- Install MySql
5.- Install Postgresql
"""

package_txt = {
    1: 'docker',
    2: 'docker-compose'
}

@command('install')
@option(
    '-o', '--option', prompt=options,
    type=IntRange(1, 5)
)
def install_package(option):
    with open(
        f'packages/{package_txt[option]}_install.txt', "r"
    ) as txt:
        list_command = csv.reader(txt)
        for install_comand in list_command:
            if install_comand and isinstance(install_comand, list):
                echo(style(install_comand[0], fg='cyan'))
                os.system(install_comand[0])
