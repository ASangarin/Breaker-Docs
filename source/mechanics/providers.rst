.. _doc_mechanics_providers:

Block Providers
===============

Breaker features a unqiue block selection system, that allows
you to specify exactly what blocks are affected and which aren't.
This system works by using something called a **Block Provider**.

------------------

Each **Block Provider** has a different syntax for connecting with their respective blocks.
For a better understanding, read through each individual Block Provider.

----

Material Block Provider
~~~~~~~~~~~~~~~~~~~~~~~~

The **Material Block Provider** is the most simple provider there is.
It simply uses `Spigot Material <https://hub.spigotmc.org/javadocs/bukkit/org/bukkit/Material.html>`_
values to specify which block to bind your configuration to.

Using this provider is simple as you just need to input name of the desired block.

.. note:: **Example**: ``block: IRON_BLOCK``

----

Tag Block Provider
~~~~~~~~~~~~~~~~~~~~~~~~

The **Tag Block Provider** allows you to input `block tags <https://minecraft.fandom.com/wiki/Tag#Blocks>`_.
Any block included in the tag will be affected by the configuration.

You can also `create your own datapack <https://minecraft.fandom.com/wiki/Tutorials/Creating_a_data_pack>`_ and add custom block tags.

.. note:: | **Example**: ``block: "#minecraft:wool"``
          | (*Remember to use quotations, as YAML will otherwise think the hashtag is a comment*)

----

Player Head Block Provider
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. warning:: NOT YET IMPLEMENTED!

.. note:: **Example**: ``block: SKULL-eyJ0ZXh0d...`` (Shortened)

----

MMOItems Block Provider
~~~~~~~~~~~~~~~~~~~~~~~~

.. warning:: NOT YET IMPLEMENTED!

.. note:: **Example**: ``block: MMOITEMS_13``