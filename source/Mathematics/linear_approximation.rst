Linear Approximation
====================

Formula
*******

.. math::

   L(x) = f(a) + f'(a)(x - a)

Proof
*****

:math:`m` is the gradient of a line and recall the :ref:`gradient-of-a-line`
is :math:`{y_2-y_1} \over {x_2 - x_1}` 

.. math::

  {f'(x)} = {{y_2 - y_1} \over {x_2 - x_1}}

Writing :math:`f(x)` in terms of a value at a sepific point :math:`f(a)`
gives us

.. math::

  {f'(a)} = {{y_2 - f(a)} \over {x_2 - a}}

Simplifying we get

.. math::

  {f'(a)(x_2 - a)} + f(a) = y_2

Writing :math:`y_2` as a function of :math:`x_2`

.. math::

  L(x) = {f'(a)(x - a)} + f(a)
