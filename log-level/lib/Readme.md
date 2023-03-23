BY Vishal

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
