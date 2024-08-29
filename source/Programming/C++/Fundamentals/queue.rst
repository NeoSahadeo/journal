Queue System
============

The queue system uses linked lists to create a buffer
of items.

It follows the **FIFO (First In, First Out)** paradigm.

.. code:: cpp

  /* Queue
   *
   * Description:
   * A queue is a first-in-first out system.
   */

  #include <iostream>

  class Node
  {
  public:
    int value = 0;
    Node *next = nullptr;

    Node(int val) : value(val), next(nullptr) {}
  };

  class Queue
  {
  public:
    Node *head = nullptr;
    Node *tail = nullptr;

    // Queue the item
    void enqueue(int item)
    {
      Node *node = new Node(item);
      node->value = item;

      // If the tail or head do not exist the
      // node array size is zero.
      if (tail == nullptr || head == nullptr)
      {
        head = node;
        tail = node;
        return;
      }

      // If a value does exist. Then add the
      // item to the queue.
      tail->next = node;
      tail = node;
    }

    // Deque item
    void deque()
    {
      // Check if the head exists
      if (head != nullptr)
      {
        // If it does exist update the head pointer
        // to the next node.
        Node *currenthead = head;
        head = head->next;

        // Clean up
        delete currenthead;
      }
    }

    // Display values
    void display()
    {
      Node *current = head;
      while (current != nullptr)
      {
        std::cout << current->value << " " << std::endl;
        current = current->next;
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

**Output**

.. code:: bash

  (🐧):make ; ./main
  g++ -o main main.cpp -Wall
  3
  4
