# What is Make File 


Make File is Program Building tool which runs mainly on Linux and Unix environt

If you want to run or update a task when certain files are updated, the make utility can come in handy. The make utility requires a file, Makefile (or makefile), which defines set of tasks to be executed. You may have used make to compile a program from source code. Most open source projects use make to compile a final executable binary, which can then be installed using make install.

In this article, we'll explore make and Makefile using basic and advanced examples. Before you start, ensure that make is installed in your system.

# Syntax

* .PHONY

* **targets: prerequisites**
A Makefile consists of a set of rules. A rule generally looks like this:
targets: prerequisites
	command
	command
	command
The targets are file names, separated by spaces. Typically, there is only one per rule.
The commands are a series of steps typically used to make the target(s). These need to start with a tab character, not spaces.
The prerequisites are also file names, separated by spaces. These files need to exist before the commands for the target are run. These are also called dependencies

# Basic Examples


# Pattern Regonitions