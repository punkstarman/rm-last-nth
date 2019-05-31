# Remove Last `n`th Element

This project implements a solution to the problem of removing the last `n`th
element from a list under certain performance constraints.

## The Problem

Given a linked list, remove the `n`th node from the end of list and return its head.
Assume `n` is always shorter than the length of the list.

Performance constraints: use constant space and only one pass.

[Reference](https://leetcode.com/problems/remove-nth-node-from-end-of-list/)

## The Solution

This project uses [Haskell Stack][haskellstack] with [Docker][docker] [support][haskellstack-docker] enabled by default.
If you don't have Docker installed or don't want to use Docker, you can add the `--no-docker` option to any of the following invocations of `stack`.

[haskellstack]: https://haskellstack.org/
[docker]: https://docker.com/
[haskellstack-docker]: https://docs.haskellstack.org/en/stable/docker_integration/

### Build

```shell
stack build
```

### Test

```shell
stack test
```

### Run

The program outputs all lines from input except for the last `n`th.

It takes a single argument which specifies `n`.

```shell
stack run -- 4
```

Example input:
```
This is a really long document
with confidential information
on one of the lines.
SUPER SECRET: 1234
Haskell evaluation is lazy
which makes it easy to
stream processing of this
kind of file.
```

Example ouput:
```
This is a really long document
with confidential information
on one of the lines.
Haskell evaluation is lazy
which makes it easy to
stream processing of this
kind of file.
```
