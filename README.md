# dev-environment

Automatically sets up a virtual machine (VM) configured for developing Ethereum
decentralized applications (DApps).

## Prerequisites

You need to install `vagrant` and `ansible`.

If you're using Ubuntu, run `./pre-run.sh` to automatically install the required
packages. Otherwise, you'll have to install them manually.

## How to use

Clone the repository:
`git clone https://github.com/BitKariero/dev-environment.git`

Change into the created directory.

Run:
`vagrant up`

This may take up to 30 minutes, depending on your Internet connection speed and
whether this is the first time you execute the command.

For login, the username is `vagrant` and the password is `vagrant`.

## Installed tools

* `geth` –> `run-geth.sh` on *Desktop/*
* `parity` –> `run-parity.sh` on *Desktop/*
* `mist` –> `run-mist-rpc.sh` on *Desktop/*, automatically connects to the running geth/parity instance
* `embark` – see [instructions](https://github.com/iurimatias/embark-framework)

## Updating the box

If you want to bring your VM to the latest version, you don't need to re-create
it from scratch.

Just `git pull` and then run `vagrant provision` on the host when the VM is
turned on.

## Notes

We recommend using `parity` for day-to-day usage.

`run-parity.sh` syncs with the Ropsten testnet.
