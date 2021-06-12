import sys, platform

from click import group, echo, style

from logo import LOGO
from install_package import install_package

@group()
def core_dotfile():
    echo(style(LOGO, fg='cyan'))
    if sys.platform != 'linux':
        raise Exception('It must be a ubuntu distro')

@core_dotfile.command()
def f():
    pass

core_dotfile.add_command(install_package)
