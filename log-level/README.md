# Log Level

Welcome to Log Level on Exercism's Elixir Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

## Atoms

Elixir's `atom` type represents a fixed constant. An atom's value is simply its own name. This gives us a type-safe way to interact with data. Atoms can be defined as follows:

```elixir
# All atoms are preceded with a ':' then follow with alphanumeric snake-cased characters
variable = :an_atom
```

_Atoms_ are internally represented by an integer in a lookup table, which are set automatically. It is not possible to change this internal value.

## Cond

Often, we want to write code that can branch based on a condition. While there are many ways to do this in Elixir, one of the simplest ways is using `cond/1`.

At its simplest, `cond` follows the first path that evaluates to `true` with one or more branches:

```elixir
cond do
  x > 10 -> :this_might_be_the_way
  y < 7 -> :or_that_might_be_the_way
  true -> :this_is_the_default_way
end
```

If no path evaluates to `true`, an error is raised by the runtime.

## Instructions

You are running a system that consists of a few applications producing many logs. You want to write a small program that will aggregate those logs and give them labels according to their severity level. All applications in your system use the same log codes, but some of the legacy applications don't support all the codes.

| Log code | Log label | Supported in legacy apps? |
| -------- | --------- | ------------------------- |
| 0        | trace     | no   ; False              |
| 1        | debug     | yes  ; True               |
| 2        | info      | yes  ; True               |
| 3        | warning   | yes  ; True               |
| 4        | error     | yes  ; True               |
| 5        | fatal     | no   ; False              |
| ?        | unknown   | -                         |


## 1. Return the logging code label

Implement the `LogLevel.to_label/2` function. It should take an integer code and a boolean flag telling you if the log comes from a legacy app, and return the label of a log line as an atom. Unknown log codes and codes unsupported in a legacy app should return an _unknown_ label.

```elixir
LogLevel.to_label(0, false)
# => :trace

LogLevel.to_label(0, true)
# => :unknown
```

## 2. Send an alert

Somebody has to be notified when unexpected things happen.

Implement the `LogLevel.alert_recipient/2` function to determine to whom the alert needs to be sent. The function should take an integer code and a boolean flag telling you if the log comes from a legacy app, and return the name of the recipient as an atom.

If the log label is _error_ or _fatal_, send the alert to the _ops_ team. If you receive a log with an _unknown_ label from a legacy system, send the alert to the _dev1_ team, other unknown labels should be sent to the _dev2_ team. All other log labels can be safely ignored.

```elixir
LogLevel.alert_recipient(-1, true)
# => :dev1

LogLevel.alert_recipient(0, false)
# => false
```

## Source

### Created by

- @neenjaw







<!-- ------BY Vishal-------- -->

Log level exercise:

https://exercism.org/tracks/elixir/exercises/log-level


Atom:

  1. Atoms represent a fixed constant. An atom's value is simply its own name.

  2. Atoms starts with colon : and text  with snake cases

  3. variable = :an_atom

Cond:

  1. It checks the first clause with true value and shows the result like true.

  2. to match against different values. 

  3. 

Instruction:

  1. You are running a system that consists of applications producing many logs.

  2. Want to write a small program that will aggregate those logs

  3. Labels them according to their severity level.

  4. All applications use the same log codes

  5. but some of the legacy applications don't support all the codes.


# Task 1: Return the logging code label:

  1. Implement the `LogLevel.to_label/2` function.

  2. Take an integer code and a boolean flag

  3. If log code and supported legacy same print the Log label, If not print _unknown_ label.

| Log code | Log label | Supported in legacy apps? |
| -------- | --------- | ------------------------- |
| 0        | trace     | no                        |
| 1        | debug     | yes                       |
| 2        | info      | yes                       |
| 3        | warning   | yes                       |
| 4        | error     | yes                       |
| 5        | fatal     | no                        |
| ?        | unknown   | -                         |


# Task 2: Send an alert:

  1. Implement the `LogLevel.alert_recipient/2` function --done

  2. take an integer code and a boolean flag  -- done

  3. to be notified when unexpected things happen. --

    3.1 If log label (error or fatal) notify to (_ops_ team)
    
    3.2 If log label (unknown) notify to (_dev1_ team)

    3.3 If (other unknown labels) notify to (_dev2_ team)

    3.4 All other log labels can be safely ignored.




