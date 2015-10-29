# Ruby Educational Examples

This repository contains some educational examples I've written when
studying books on Ruby. As I went from chapter to chapter I was giving
language elements a try by preparing simple examples. Each `.rb` file is
self-contained and can be run by simple invocation:

	./robj_14.rb

This repository might not be valuable per-se, yet you can glance at the
`Makefile`, since it can act as a skeleton for the repository of your own,
with examples from other languages.

# How to run

Just type:

	make

# How it works

Each `.rb` file generates some output to standard output. Normally stuff is
printed to the screen in the interactive mode with some exceptions to
scripts which also write to the file whose name is hard-coded in a script.
The `makefile` will run every `.rb` script and capture its output in the
`.o` file in the `test` directory. This is so-called an `actual result` of
the execution. These files are then compared with the `.t` files (e.g.:
`robj_7.o` is compared with `robj_7.t`), which are so-called `golden outputs`.

# Open issues

After I wired these examples with [Travis CI](http://www.travis-ci.org) I've
found a problem with [Rubinius](https://github.com/rubinius/rubinius/)
interpreter:

	https://github.com/rubinius/rubinius/issues/3456

# Author

- Wojciech Adam Koszek, [wojciech@koszek.com](mailto:wojciech@koszek.com)
- [http://www.koszek.com](http://www.koszek.com)
