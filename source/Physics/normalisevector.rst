.. _normalisinvector:

Normalising a vector
====================

Normalising a vector is the process of making the length
of a vector equal to 1, while maintaining the direction.
This is called a `unit vector`.

Formula
*******

.. math::
   \overrightarrow{u} = { \overrightarrow{v} \over {\vert\vert\overrightarrow{v} \vert\vert} }


Intuition
*********

Building an understanding of this process.
Starting out with a 2D vector :math:`\lt2, 4\gt`.

.. image:: /images/normalisevectors1.png

We can compute the hypotenuse with Pythagoras.

:math:`\sqrt{2^2 + 4^2} = \sqrt{20}`

So the question then becomes, "What can I do to :math:`\sqrt{20}`
to make it equal to 1". That's an easy question to answer, just
divide it by itself. **BUT** the catch is preserving the angle.

Working out the angle we get :math:`\arcsin({4 \over \sqrt{20}}) \approx 63.43`

Our `unit vector` will always be a length of 1. That means our vector point
will lie at 63.43 degrees on a unit circle.

.. image:: /images/normalisevectors2.png

To get our values we just plug in 63.43 into cosine and sine.

.. math::
   \sin{(63.43)} = 0.89

   \cos{(63.43)} = 0.45

Which is just our values of :math:`{4 \over \sqrt{20}}` and :math:`{2 \over \sqrt{20}}`.

Putting it all together we can say

.. math::
  {{\lt2,4\gt} \over \sqrt{20}} = \lt0.45, 0.89\gt
