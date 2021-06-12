import getpass
import platform

LOGO = f"""
╔═══╗──╔╗╔═╗╔╗
╚╗╔╗║─╔╝╚╣╔╝║║
─║║║╠═╩╗╔╝╚╦╣║╔══╦══╗
─║║║║╔╗║╠╗╔╬╣║║║═╣══╣
╔╝╚╝║╚╝║╚╣║║║╚╣║═╬══║
╚═══╩══╩═╩╝╚╩═╩══╩══╝
Hello {getpass.getuser()}!👋 {platform.platform()}
"""
