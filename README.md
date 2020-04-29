# Memcached Actions

[![Memcached](https://img.shields.io/badge/memcached-1.6.5-green?style=flat-square)](https://github.com/memcached/memcached/releases)
[![release](https://img.shields.io/badge/marketplace-memcached%0Aactions-blue?style=flat-square&logo=github)](https://github.com/marketplace/actions/memcached-actions)
[![Test](https://github.com/KeisukeYamashita/memcached-actions/workflows/Test/badge.svg)](https://github.com/KeisukeYamashita/memcached-actions/actions?query=workflow%3ATest)
[![tag](https://img.shields.io/badge/release-v1-green?style=flat-square&logo=github)](https://github.com/KeisukeYamashita/memcached-actions/releases)
[![License](https://img.shields.io/badge/License-Apache%202.0-red?style=flat-square)](./LICENSE)

> This GitHub actions configures and runs a memcached cluster or a node in your action workflow.

## Usage

### Run a single node

```yaml
- uses: KeisukeYamashita/memcached-actions@v1
```

## Basics

### Inputs

#### ports

Default is `11211` which means that this action will run a single memcached node.

```yaml
uses: KeisukeYamashita/memcahed-action@v1
```


Pass an array of the ports of the memcached servers in `,` seperated. If you want to run a memcached cluster with 3 nodes with `11211`, `11212`, `11213` port, your config should be as below: 

```yaml
uses: KeisukeYamashita/memcached-actions@v1
with:
    ports: "11211,11212,11213"
```

## Author

* [KeisukeYamashita](https://github.com/KeisukeYamashita)

## LICENSE

The driver is released under the Apache 2.0 license. See the [LICENSE](./LICENSE) for more information.
