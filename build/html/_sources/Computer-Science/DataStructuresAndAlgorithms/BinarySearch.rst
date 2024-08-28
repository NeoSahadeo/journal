Binary Search
=============

Binary search is an algorithm to search through
an array of sorted values till the desired value
is found.

**Steps**

1. Go to the half-way point of the width of the 
   array selection.
2. If the array at that position is equal to the value
   wanted, return it.
3. If the value is less than the array at that position
   choose the "left hand" side and restart steps.
   **or**
3. If the value is less than the array at that position
   the "right hand" side and restart the steps.

Time Complexity
***************

Iterates through the entire array until the value is found. 

.. math::
   O(log(n))

Simple Proof
------------

Given an array of size :math:`n`, we half the array
continuously until the value we want is found.

.. math::

   [0 ..  N]

The first value we check is the mid point.

.. math::

   N \over 2

Then check the mid point of that.

.. math::

   ({N \over 2}) * ({1 \over 2})

or

.. math::

   N \over 4

This can be continuously done until the value
is found. And generally we can write

.. math::

  {N \over {2^k}} = 1

where the :math:`2^k` will eventually equal the
value of N assuming N is even.

Solving further,

.. math::

  {log_2(N)} = k

the running time then becomes

.. math::

  {log(N)}

Implementation
**************

**Pseudo-code**

.. code::

  BEGIN
    DECLARE array AS [0, 1, 3, 4, 5, 6, 7, 8, 9]
    DECLARE value AS 6

    DECLARE low AS 0
    DECLARE high AS LENGTH(array)

    WHILE low < high DO
      DECLARE m AS FLOOR(low + ((high - low) / 2))
      DECLARE v AS array[m]

      IF v EQUALS value THEN
        RETURN TRUE
      END IF

      IF v > value THEN
        high = m
      ELSE
        low = m + 1
      END IF
    END WHILE

    RETURN FALSE
  END


**Typescript**

.. code:: typescript

  const array = [0, 1, 3, 4, 5, 6, 7, 8, 9];
  const value = 6;

  let low = 0;
  let high = array.length;

  while (low < high) {
    const m = Math.floor(low + ((high - low) / 2));
    const v = array[m];
    if (v === value) {
      return true;
    }
    if (v > needle) {
      high = m;
    } else {
      low = m + 1;
    }
  }
  return false;

**C++**

.. code::

  int array[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  int value = 6;

  int low = 0;
  int high = 10;

  while (low < high) {
    int m = std::floor(low + ((high - low) / 2));
    int v = array[m];
    if (v == value) {
      return true;
    }
    if (v > value) {
      high = m;
    } else {
      low = m + 1;
    }
  }
  return false;
