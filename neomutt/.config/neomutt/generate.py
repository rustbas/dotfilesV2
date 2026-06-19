from yaml import safe_load
from jinja2 import Environment, FileSystemLoader, select_autoescape
from os import path, mkdir, chmod


MAIL_DIR = path.expanduser("~/mail")

with open("accounts.yml", "r") as file:
    data = safe_load(file)

for account in data["accounts"]:
    mail = account["email"]#.replace("@", "_at_")
    mail_dir = path.join(MAIL_DIR, mail)
    if not path.exists(mail_dir):
        mkdir(mail_dir)

env = Environment(
    loader=FileSystemLoader('.')
)

template = env.get_template('mbsyncrc.j2')
mbsync_config = template.render(data)
with open(path.expanduser("~/.mbsyncrc"), "w") as file:
    file.write(mbsync_config)

template = env.get_template('msmtp.j2')
msmtp_config = template.render(data)
with open(path.expanduser("~/.msmtprc"), "w") as file:
    file.write(msmtp_config)
chmod(path.expanduser("~/.msmtprc"), 0o600)

template = env.get_template('accounts.neomuttrc.j2')
accounts = template.render(data)
with open(path.expanduser("~/.config/neomutt/accounts.neomuttrc"), "w") as file:
    file.write(accounts)
