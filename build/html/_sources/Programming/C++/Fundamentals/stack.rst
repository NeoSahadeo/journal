Stack System
============

The stack system uses linked lists to create a 'stack'
of items.

It follows the **FILO (First In, Last Out)** paradigm.

.. code:: cpp

  /* Stack
   *
   * Description:
   * A stack is a first-in-last-out system.
   */

  #include <iostream>

  class Node
  {
  public:
    int value = 0;
    Node *prev = nullptr;

    Node(int val) : value(val), prev(nullptr) {}
  };

  class Queue
  {
  public:
    Node *tail = nullptr;

    // Queue the item
    void enqueue(int item)
    {
      Node *node = new Node(item);
      node->value = item;

      // If the tail do not exist the
      // node array size is zero.
      if (tail == nullptr)
      {
        tail = node;
        return;
      }

      // If a value does exist. Then add the
      // item to the queue.
      node->prev = tail;
      tail = node;
    }

    // Deque item
    void deque()
    {
      // If tail exists do this
      if (tail != nullptr)
      {
        Node *current_tail = tail;
        tail = tail->prev;

        // Clean up
        delete current_tail;
      }
    }

    // Display values
    void display()
    {
      Node *current = tail;
      while (current != nullptr)
      {
        std::cout << current->value << " " << std::endl;
        current = current->prev;
      }
    }
  };

  int main(void)
  {
    Queue queue;
    queue.enqueue(1);
    queue.enqueue(2);
    queue.enqueue(3);
    queue.enqueue(4);

    queue.deque();
    queue.deque();

    queue.display();
    return 0;
  }
