Bubble Sort
===========

Bubble sort involves swaping elements to
sort an array from lowest to highest.

This is the easiest sorting algorithm to
implement (and understand).

Time Complexity
***************

Each value is iterated through the sum of
N times.

.. math::

   O(n^2)

Simple Proof
************

Reminder that the sum of a linear series
of values is

.. math::

   100 + 1 = 101

   99 + 2 = 101

   ..

   98 + 3 = 101

or more abstractly. Where the last element
will be 1

.. math::

   N

   N-1

   N-2

   ..

   N-N+1 = 1

or more simply put

.. math::

   	\displaystyle\sum_{i=0}^n {N - i}

Thus, assuming the worst case of a reversed list
where :math:`N+N-1` is the last value, we get

.. math::

   {n^2 - n} \over 2

giving a running time of

.. math::

   O(n^2)

Implementation
**************

**Pseudo-code**

.. code::

  FOR i FROM length of array DOWNTO 2 DO
   FOR j FROM 0 TO i - 1 DO
     IF arr[j] > arr[j + 1] THEN
       k = arr[j + 1]
       arr[j + 1] = arr[j]
       arr[j] = k
     END IF
   END FOR
  END FOR

**Typescript**

.. code::

  for (let i = array.length - 1; i > 1; i--) {
    for (let j = 0; j < i; j++) {
      if (array[j] > array[j+1]) {
        const k = array[j+1]
        array[j+1] = array[j]
        array[j] = k
      }
    }
  }

**C++**

.. code::

  for (int i = arrayLength - 1; i > 1; i--) {
    for (int j = 0; j < i; j++) {
      if (array[j] > array[j+1]) {
        int k = array[j+1];
        array[j+1] = array[j];
        array[j] = k;
      }
    }
  }

**Python**

.. code::

  for x in range(0, len(array)):
      for y in range(0, len(array) - 1 - x):
          if array[y] < array[y + 1]:
              temp = array[y]
              array[y] = array[y + 1]
              array[y + 1] = temp

.. image:: /images/bubble_sort_22_02_2025.webp
