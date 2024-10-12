Boolean Algebra
===============

Boolean algebra is algebra concerned with boolean
values; 0 and 1 (off and on).

The order of operations differ from standard algebra.

Standard Algebra Order:

1. Brackets
2. Exponents
3. Juxtaposition
4. Multiplication / Division
5. Addition / Subtraction

Boolean Algebra Order:

1. Brackets
2. NOT (exponent)
3. AND (juxtaposition)
4. OR (addition)

----

**What is a complement**

A mathematical complement decribes a system where the
elements are not within the current set.
In binary, there is only **one** other complement.

Laws
******

Annulment Law
#############

The definition of annulment from Google

    The act of annulling; abolition; invalidation.

Annulment describes a process of destroying something.

In this context when we plug in 0's we expect 0's back; and
the same goes for 1's

**General Definition**

- ``a`` is the binary value
- ``*`` is any binary operation
- ``0``
- ``1``

.. math::
   a * 0 = 0

   0 * a = 0

   a * 1 = 1

   1 * a = 1

Zero Annulment
--------------

+---+---+-------------------+
| A | B | A :math:`\cdot` B |
+===+===+===================+
| 0 | 0 | 0                 |
+---+---+-------------------+
| 1 | 0 | 0                 |
+---+---+-------------------+

One Annulment
-------------

+---+---+---------------+
| A | B | A :math:`+` B |
+===+===+===============+
| 0 | 1 | 1             |
+---+---+---------------+
| 1 | 1 | 1             |
+---+---+---------------+

Identity Law
############

The identity law states that each variable is equal to itself
when combined with identity elements.

**General Definition**

- ``a`` is the binary value
- ``e`` is any binary value
- ``*`` is any binary operation

.. math::
   a * e = a

   e * a = a

OR Gate
--------

+---+---+---------------+
| A | B | A :math:`+` B |
+===+===+===============+
| 0 | 0 | A             |
+---+---+---------------+
| 1 | 0 | A             |
+---+---+---------------+

AND Gate
--------

+---+---+-------------------+
| A | B | A :math:`\cdot` B |
+===+===+===================+
| 0 | 1 | A                 |
+---+---+-------------------+
| 1 | 1 | A                 |
+---+---+-------------------+

Idempotent Law
##############

The definition of indempotent from Google

    Describing an action which, when performed
    multiple times, has no further effect on its
    subject after the first time it is performed.

The law states that a variable that performs a
binary operation on itself yields itself.

**General Definition**

- ``a`` is the binary value
- ``e`` is any binary value
- ``*`` is any binary operation

.. math::
   a * a = a

Performing an OR / AND operation yields as follows.

OR Gate
--------

+---+---+-------------------+
| A | A | A :math:`\cdot` A |
+===+===+===================+
| 0 | 0 | A                 |
+---+---+-------------------+
| 1 | 1 | A                 |
+---+---+-------------------+

AND Gate
--------

+---+---+---------------+
| A | A | A :math:`+` A |
+===+===+===============+
| 0 | 0 | A             |
+---+---+---------------+
| 1 | 1 | A             |
+---+---+---------------+

Complement Law
##############

The complement of binary number can either be 0 or 1;
Performing an OR / AND operation yields as follows.

OR Gate
-------

+---+---+-----+
| A | A'| A+B |
+===+===+=====+
| 0 | 1 | 1   |
+---+---+-----+
| 1 | 0 | 1   |
+---+---+-----+

AND Gate
--------

+---+---+------------------+
| A | A'| A :math:`\cdot` A|
+===+===+==================+
| 0 | 1 | 0                |
+---+---+------------------+
| 1 | 0 | 0                |
+---+---+------------------+


Commutative Law
###############

The commutative law states that the order of operation
does not matter with either **AND** or **OR**

.. math::

   A+B = B+A

.. math::

   A \cdot B = B \cdot A

Proof
-----

+---+---+-----+----+-----+----+
| A | B | A+B | AB | B+A | BA |
+===+===+=====+====+=====+====+
| 0 | 0 | 0   | 0  | 0   | 0  |
+---+---+-----+----+-----+----+
| 0 | 1 | 1   | 0  | 1   | 0  |
+---+---+-----+----+-----+----+
| 1 | 0 | 1   | 0  | 1   | 0  |
+---+---+-----+----+-----+----+
| 1 | 1 | 1   | 1  | 1   | 1  |
+---+---+-----+----+-----+----+

Double Negation Law
###################

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


Distributive Laws
#################

There are two statements under the distributive laws.

.. math::

   A(B+C) = A \cdot B + A \cdot C

.. math::

   A + B \cdot C = (A + B) \cdot (A + C)

My logical reasoning :math:`A + B \cdot C = (A + B) \cdot (A + C)`
------------------------------------------------------------------

Lets take the result :math:`(a+b)(a+c)` and expand it.

.. math::

   aa+ac+ba+bc

:math:`aa` simplifies to :math:`a` (indempotent law)

We can then group `a`'s

.. math::

   a(1+c) + ba + bc

:math:`1+c` becomes 1 (annulment law) which leaves us with
after applying the identity law

.. math::

   a + ba + bc

we can repeat the previous step of seperating out the `a`'s

.. math::

   a(1+b) + bc
   =a + bc

So we can then see any expression in the form of :math:`a + x`
where :math:`x` can be any value is directly equivalent to
:math:`a+ax+x` such that :math:`a(1+x)+x = a+1`


Proof :math:`A(B+C) = A \cdot B + A \cdot C`
--------------------------------------------

+---+---+---+----+----+-------+-----+--------+
| A | B | C | AB | AC | AB+AC | B+C | A(B+C) |
+===+===+===+====+====+=======+=====+========+
| 0 | 0 | 0 | 0  | 0  | 0     | 0   | 0      |
+---+---+---+----+----+-------+-----+--------+
| 0 | 0 | 1 | 0  | 0  | 0     | 1   | 0      |
+---+---+---+----+----+-------+-----+--------+
| 0 | 1 | 0 | 0  | 0  | 0     | 1   | 0      |
+---+---+---+----+----+-------+-----+--------+
| 0 | 1 | 1 | 0  | 0  | 0     | 1   | 0      |
+---+---+---+----+----+-------+-----+--------+
| 1 | 0 | 0 | 0  | 0  | 0     | 0   | 0      |
+---+---+---+----+----+-------+-----+--------+
| 1 | 0 | 1 | 0  | 1  | 1     | 1   | 1      |
+---+---+---+----+----+-------+-----+--------+
| 1 | 1 | 0 | 1  | 0  | 1     | 1   | 1      |
+---+---+---+----+----+-------+-----+--------+
| 1 | 1 | 1 | 1  | 1  | 1     | 1   | 1      |
+---+---+---+----+----+-------+-----+--------+

Proof :math:`A + B \cdot C = (A + B) \cdot (A + C)`
---------------------------------------------------

+---+---+---+----+------+-----+-----+------------+
| A | B | C | BC | A+BC | A+B | A+C | (A+B)(A+C) |
+===+===+===+====+======+=====+=====+============+
| 0 | 0 | 0 | 0  | 0    | 0   | 0   | 0          |
+---+---+---+----+------+-----+-----+------------+
| 0 | 0 | 1 | 0  | 0    | 0   | 1   | 0          |
+---+---+---+----+------+-----+-----+------------+
| 0 | 1 | 0 | 0  | 0    | 1   | 0   | 0          |
+---+---+---+----+------+-----+-----+------------+
| 0 | 1 | 1 | 1  | 1    | 1   | 1   | 1          |
+---+---+---+----+------+-----+-----+------------+
| 1 | 0 | 0 | 0  | 1    | 1   | 1   | 1          |
+---+---+---+----+------+-----+-----+------------+
| 1 | 0 | 1 | 0  | 1    | 1   | 1   | 1          |
+---+---+---+----+------+-----+-----+------------+
| 1 | 1 | 0 | 0  | 1    | 1   | 1   | 1          |
+---+---+---+----+------+-----+-----+------------+
| 1 | 1 | 1 | 1  | 1    | 1   | 1   | 1          |
+---+---+---+----+------+-----+-----+------------+

AND Operation and its rules
###########################

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
