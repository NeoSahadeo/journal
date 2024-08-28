Linear Search
=============

Linear search is an iteration through an array of
values till the desired value is reached.

Time Complexity
***************

Iterates through the entire array of values until
the value is found. The worst case is :math:`n^{th}`
iterations of an array of size :math:`n`.

.. math::
   O(n)

Implementation
**************

**Pseudo-code**

.. code::

   BEGIN
    DECLARE array = [0,1,2,3,4,5,6,7,8,9]
    DECLARE value = 6

    FOR each element IN array DO
      IF element IS EQUAL TO value THEN
        RETURN TRUE
      END IF
    END FOR
    RETURN FALSE
   END


**Typescript**

.. code:: typescript

  const array = [0, 1, 3, 4, 5, 6, 7, 8, 9];
  const value = 6;

  for (let i = 0; i < array.length; i++) {
    if (array[i] === value) {
        return true;
    }
  }
  return false;

**C++**

.. code:: 

  int array[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  int value = 6;

  for (int i = 0; i < 10; i++) {
    if (array[i] == value) {
      return true;
    }
  }
  return false;
