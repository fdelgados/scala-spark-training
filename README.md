# Scala + Spark VM

## Prerequisites

An Ansible installation. Run:

`brew install ansible`

## Installation

Rename the vagrant.yml.dist file to vagrant.yml, edit it and run:

`vagrant up`

and be patient.

## Spark web UI

In the vagrant machine, type `spark-shell` to start Spark, then type <ip_address>:4040 in your browser, where <ip_address> is the ip configured in your vagrant.yml file

## Acknowledgement

Ansible roles created by [Andrew Rothstein](https://galaxy.ansible.com/andrewrothstein/)
