.. _doc_mechanics_hardness:

Hardness
==============

.. tip:: Check the Minecraft wiki for `vanilla hardness <https://minecraft.fandom.com/wiki/Breaking#Blocks_by_hardness>`_ values. They may help!

This section simply describes the contents of the :ref:`Configuration <doc_quickstart_configuration>` page.

.. admonition:: :ref:`Configuring the Hardness <doc_quickstart_configuration_hardness>`

   **Hardness** is the system that determines how long it takes to break your blocks. This value is then modified by **States**, which makes it dynamic and customizable.
   
   There are three types of hardness: ``max``, ``min`` and ``base``.
   
   - **max**: This is the absolute longest it will ever take to break a block. No matter how states are configured the breaking time will never be longer than this.
   - **min**: This is the absolute shortest it will ever take to break a block. No matter how states are configured the breaking time will never be shorter than this.
   - **base**: This is how long it will take to break a block when no states have been activated.