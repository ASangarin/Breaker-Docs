.. _doc_mechanics_triggers:

Triggers
================

.. admonition:: :ref:`Configuring the Triggers <doc_quickstart_configuration_triggers>`

   **Triggers** are... Well. *Triggers*. You can specify certain things to happen when the player interacts with a configured block. This ranges from *running commands* after breaking a block, or running a :abbr:`MythicMobs (An external plugin)` skill if the player stops mining without breaking the block.

.. attention:: | See :ref:`Configuration <doc_quickstart_configuration_triggers>` to better understand how triggers are configured!
               | This page is for seeing which trigger types and functions are available.

----

Trigger Types
~~~~~~~~~~~~~~~~~~~~

====== =
Type   Description
====== =
start  Runs when the player starts breaking the block.
break  Runs when the player finishes breaking the block.
abort  Runs when the player stops breaking a block, before finishing.
stop   A mix of the two above. Runs on break and abort.
====== =

.. tip:: | ``start``, ``break`` and ``stop`` triggers all execute at the same time if a block is instantly broken.

----

Trigger Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~

+----------+------------------------------------------+---------------------------------------+
| Function | Description                              | Example                               |
+==========+==========================================+=======================================+
| command  | Runs a command. Supports PAPI and can    | ``break{command="!kill %player%"}``   |
|          | run from console by prefixing with ``!``.|                                       |
+----------+------------------------------------------+---------------------------------------+
| event    | Fires an event that other plugin         | ``break{event="event args"}``         |
|          | developers can listen for.               |                                       |
+----------+------------------------------------------+---------------------------------------+
| skill    | Run a MythicMobs skill. Skill conditions | ``break{skill="MyCoolMMSkill"}``      |
|          | will be checked before firing.           |                                       |
+----------+------------------------------------------+---------------------------------------+

.. important:: The ``skill`` function requires :ref:`MythicMobs <doc_quickstart_external>`!