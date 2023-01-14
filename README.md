# :bird: pterodactyl-installer

Unofficial scripts for installing Pterodactyl Panel & Wings. Works with the latest version of Pterodactyl!

Read more about [Pterodactyl](https://pterodactyl.io/) here. This script is not associated with the official Pterodactyl Project.

## Features

- Automatic installation of the Pterodactyl Panel (dependencies, database, cronjob, nginx).
- Automatic installation of the Pterodactyl Wings (Docker, systemd).
- Panel: (optional) automatic configuration of Let's Encrypt.
- Panel: (optional) automatic configuration of firewall.
- Uninstallation support for both panel and wings.

## Supported installations

List of supported installation setups for panel and Wings (installations supported by this installation script).

### Supported panel and wings operating systems

| Operating System | Version | Supported          | PHP Version |
| ---------------- | ------- | ------------------ | ----------- |
| Ubuntu           | 14.04   | :red_circle:       |             |
|                  | 16.04   | :red_circle: \*    |             |
|                  | 18.04   | :white_check_mark: | 8.1         |
|                  | 20.04   | :white_check_mark: | 8.1         |
|                  | 22.04   | :white_check_mark: | 8.1         |
| Debian           | 8       | :red_circle: \*    |             |
|                  | 9       | :red_circle: \*    |             |
|                  | 10      | :white_check_mark: | 8.1         |
|                  | 11      | :white_check_mark: | 8.1         |
| CentOS           | 6       | :red_circle:       |             |
|                  | 7       | :red_circle: \*    |             |
|                  | 8       | :red_circle: \*    |             |
| Rocky Linux      | 8       | :white_check_mark: | 8.1         |
|                  | 9       | :white_check_mark: | 8.1         |
| AlmaLinux        | 8       | :white_check_mark: | 8.1         |
|                  | 9       | :white_check_mark: | 8.1         |

_\* Indicates an operating system and release that previously was supported by this script._

## Firewall setup

The installation scripts can install and configure a firewall for you. The script will ask whether you want this or not. It is highly recommended to opt-in for the automatic firewall setup.

## Development & Ops

### Testing the script locally

To test the script, we use [Vagrant](https://www.vagrantup.com). With Vagrant, you can quickly get a fresh machine up and running to test the script.

If you want to test the script on all supported installations in one go, just run the following.

```bash
vagrant up
```

If you only want to test a specific distribution, you can run the following.

```bash
vagrant up <name>
```

Replace name with one of the following (supported installations).

- `ubuntu_jammy`
- `ubuntu_focal`
- `ubuntu_bionic`
- `debian_bullseye`
- `debian_buster`
- `almalinux_8`
- `almalinux_9`
- `rockylinux_8`
- `rockylinux_9`

Then you can use `vagrant ssh <name of machine>` to SSH into the box. The project directory will be mounted in `/vagrant` so you can quickly modify the script locally and then test the changes by running the script from `/vagrant/installers/panel.sh` and `/vagrant/installers/wings.sh` respectively.

