Home
========================
.. note:: Last updated ``Jan 6th, 2022`` - version 1

.. important:: Remember to backup/delete your ``plugins/Breaker`` folder when upgrading from Legacy Breaker!
               Old configs won't work on Breaker 2.0, but can be used as reference when setting up.

.. warning::
   These docs are still being written! These pages are far from complete and can therefore be inaccurate.
   Please proceed with caution.

What is Breaker?
-----------------
Breaker is a free, yet powerful Spigot plugin which lets you set block-breaking speeds for blocks to whatever you'd like.
Want to mine Obsidian quicker? Breaker. Want to make certain wood types harder than others? Breaker can do it.
Breaker also features systems such as conditions (called states) for reducing break speed and triggers for making things happen.
This documentation contains information about everything that Breaker has to offer.

Get Breaker at `SpigotMC <https://www.spigotmc.org/>`_.

Browse through the Breaker documentation:

.. toctree::
   :maxdepth: 1
   :caption: Getting Started
   
   quickstart/installation
   quickstart/configuration
   quickstart/important
   quickstart/externalplugins

.. toctree::
   :maxdepth: 1
   :caption: Terms & Mechanics
   
   mechanics/hardness
   mechanics/providers
   mechanics/states
   mechanics/triggers

.. toctree::
   :maxdepth: 1
   :caption: Available States
   
   states/builtin
   states/external

.. toctree::
   :maxdepth: 1
   :caption: Developer API
   
   api/providers
   api/states
   api/triggers