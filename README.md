# ShInn

`ShInn` is a well architected Virtual Machine as code for development teams.

Under the hood `ShInn` utilizes VirtualBox, Vagrant and Ansible for smooth development workflow across your organization/team.

## Usage in dev workflow

`ShInn` provides a workflow to developers where they should feel free to Remove, Destroy and Up the virtual machine without worrying to have missed progess in projects. [Learn more...](#how)

### ShInn Setup

> Developers must do this on their machines

- Install **VirtualBox**, **Vagrant** and **Asnible**.
- Create a `~/Projects/ButterOps` directory. Name is case sensitive.
- SSH keygen at your machine
- Add ssh public key to your account in g Github / Bitbucket/ Gitlab / Self-hosted git service.

```bash
cd ~/Projects/ButterOps
git clone git@github.com:butterops/shinn
cd shinn
ansible-galaxy install -r req.yml
vagrant up
```

### Project setup

> Developers must do this inside `ShInn`. Make sure to clone from SSH url, for they provide passowrd less auth.

```bash
vagrant ssh
cd ~/Projects
git clone git@github.com:butterops/*.git
```

### OPTIONAL - Access ShInn by it's ~~local ip~~ name

Append this to `~/.bash_profile` or equivalent of your Host OS

```bash
function shinn() {
    ( ssh vagrant@127.0.0.1 -p 2222 $* )
}
```

Developers get to access the `ShInn` by its own command like below

```bash
shinn 'ls ~/Projects'
```

### Result

```bash
Kumars-MBP:~ kgaurav$ shinn
Welcome to Ubuntu 20.04.1 LTS (GNU/Linux 5.4.0-47-generic x86_64)

     _______. __    __   __  .__   __. .__   __. 
    /       ||  |  |  | |  | |  \ |  | |  \ |  | 
   |   (----`|  |__|  | |  | |   \|  | |   \|  | 
    \   \    |   __   | |  | |  . `  | |  . `  | 
.----)   |   |  |  |  | |  | |  |\   | |  |\   | 
|_______/    |__|  |__| |__| |__| \__| |__| \__| 
                                                 
https://shinn.butterops.dev

30 updates can be installed immediately.
8 of these updates are security updates.
To see these additional updates run: apt list --upgradable


Last login: Fri Sep 18 11:52:23 2020 from 10.0.2.2
vagrant@shinn:~$
```
