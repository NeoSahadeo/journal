Boolean Algebra
===============

Boolean Algebra TODO

**What is a complement**

A mathematical complement decribes a system where the
elements are not within the current set.
In binary, there is only **one** other complement.


Complement Law
**************

The complement of binary number can either be 0 or 1;
Performing an OR / AND operation yields as follows.

OR Gate
^^^^^^^

+---+---+-----+
| A | A'| A+B |
+===+===+=====+
| 0 | 1 | 1   |
+---+---+-----+
| 1 | 0 | 1   |
+---+---+-----+

AND Gate
^^^^^^^^

+---+---+------------------+
| A | A'| A :math:`\cdot` A|
+===+===+==================+
| 0 | 1 | 0                |
+---+---+------------------+
| 1 | 0 | 0                |
+---+---+------------------+

Double Negation Law
*******************

The negation law describes the NOT operation and when
performing the operation twice yields the original
variable value.


+---+----+-------+
| A | A' | (A')' |
+===+====+=======+
| 0 | 1  | 0     |
+---+----+-------+
| 1 | 0  | 1     |
+---+----+-------+

AND Operation and its rules
***************************

The **AND** operation is True(1) if both variables are 1.

+---+---+-------------------+
| A | B | A :math:`\cdot` B |
+===+===+===================+
| 0 | 0 | 0                 |
+---+---+-------------------+
| 0 | 1 | 0                 |
+---+---+-------------------+
| 1 | 0 | 0                 |
+---+---+-------------------+
| 1 | 1 | 1                 |
+---+---+-------------------+

The AND operations follows these laws:

- Annulment Law
    - A :math:`\cdot` 0 = 0
- Identity Property
    - A :math:`\cdot` 1 = A
- Idempotent Property
    - A :math:`\cdot` A = A
- Complement Property
    - A :math:`\cdot` A` = 0


OR Operation and its rules
**************************

The **OR** operation is True(1) if either one of the
variables are 1.


+---+---+-----+
| A | B | A+B |
+===+===+=====+
| 0 | 0 | 0   |
+---+---+-----+
| 0 | 1 | 1   |
+---+---+-----+
| 1 | 0 | 1   |
+---+---+-----+
| 1 | 1 | 1   |
+---+---+-----+


The OR operations follows these laws:

- Annulment Law
    - A + 0 = A
- Identity Property
    - A + 1 = 1
- Idempotent Property
    - A + A = A
- Complement Property
    - A + A` = 1

Distributive Laws of Boolean Algebra
************************************

There are two statements under the distributive laws.

Statement 1
^^^^^^^^^^^
