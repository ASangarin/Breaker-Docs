.. _doc_quickstart_configuration:

Configuration
===============

Breaker allows you to change the breaking speeds of almost any block you desire.
The plugin has a lot of flexibility/customization and therefore can seem complex, but it should be relatively simple once you get the hang of things.
This page of the docs will guide you through key-terms, link you to relevant pages and describe carefully how to modify the breaking speeds to your liking.

.. note:: | **Fun Fact:** Breaker Legacy used to have a much more confusing configuration syntax.
          | Luckily, the current syntax is much like the MythicMobs syntax and therefore should make things a bit easier to learn!

Configuration Basics
----------------------

How does the configuration work? To understand this we need a short introduction to Breakers calculations.

| Each configuration contains four core mechanics.
| Those mechanics are ``Block Providers``, ``Hardness``, ``States`` and ``Triggers``.

- | :ref:`Block Providers <doc_mechanics_providers>` are what will link your configurations with actual blocks. The most common one is the **Material Provider** which lets you add configurations to individual block types. There are a few :abbr:`other providers (External plugins may also add new providers)` available, which are all documented on the Block Providers page.

- | :ref:`Hardness <doc_mechanics_hardness>` is the system that determines how long it takes to break your blocks. This value is then modified by **States**, which makes it dynamic and customizable.

- | :ref:`States <doc_mechanics_states>` are conditions that can change the blocks **Hardness** when they're met. There are a ton of States available, both :ref:`provided by breaker <doc_states_builtin>` and :ref:`by external plugins <doc_states_external>`.

- | :ref:`Triggers <doc_mechanics_triggers>` are... Well. *Triggers*. You can specify certain things to happen when the player interacts with a configured block. This ranges from *running commands* after breaking a block, or running a :abbr:`MythicMobs (An external plugin)` skill if the player stops mining without breaking the block.

Block Configurations
~~~~~~~~~~~~~~~~~~~~~
Breaker loads any ``.yml`` configuration file inside the ``blocks`` folder (inside ``plugins/Breaker``) and loads it into the
:abbr:`Breaker Database (This is where Breaker stores the data for each block you configure.)`. Breaker will list any errors with your configuration in the console.

.. note:: It doesn't matter what you name your ``.yml`` file. Only the contents of the file needs to follow the syntax, but try not to use any special characters while naming your files.

.. tip:: You can add as many files as you want and Breaker will automatically load any files you place in subfolders. This allows you to organize your configs however you would like.

Example Config File
~~~~~~~~~~~~~~~~~~~~

| Let's go through the basics of each ``.yml`` file.
| Have a look at this example file:

::

    block: IRON_BLOCK # The base block to modify.
    
    breaking-time: # This value is in ticks!
      max: 30 # The maximum amount of ticks it should take to break the block
      min: 5 # The minimum amount of ticks it should take to break the block
      base: 20 # This value is optional! If not specified, the base value will use the max breaking time.
      # The base value is the time it takes to break the block if no states have activated.
    
    states: # Please refer to "Configuring States"
    - helditem{type=diamond_pickaxe;value=5} # Will subtract 5 ticks from the breaking time.
    # But only if the player is holding a Diamond Pickaxe.
    - sneaking{value=10} # Will subtract 3 ticks from the breaking time.
    # If both of the above states activate then the total breaking time in ticks will become 5, since
    # the base value is 20 and the helditem state subtracts 5 ticks and the sneaking state subtracts 10 ticks.
    # '20 - 5 - 10 = 5' (Note, the minimum is also set to 5, so it can't go lower than that)
    - helditem{type=iron_pickaxe} # Will use the default "value" of '1'
    
    triggers: # Please refer to "Configuring Triggers"
    - break{command=say I broke a block!}
    # This trigger will execute the command "say I broke a block!"
    # when the player finishes breaking the block.
    - start{skill=MyThiccSkill} # - - - Using a skill requires MythicMobs - - -
    # This trigger will execute a MythicMobs skill called "MyThiccSkill"
    # when the player starts breaking the block (if the skill can be found).
    
    # Possible triggers are: 'start', 'stop', 'break' or 'abort'
    # Possible functions are: 'skill', 'command', 'event'

Configuring the Block Provider
----------------------------------

The first line ``block: IRON_BLOCK`` represents the :ref:`Block Provider <doc_mechanics_providers>` and is currently using the Material provider.
For example, setting this as ``GOLD_BLOCK`` will make all Gold Blocks use this configuration for their breaking times (Instead of Iron Blocks as seen in the example).

For a better understanding of how to configure this, please see the :ref:`Block Provider <doc_mechanics_providers>` page.

Configuring the Hardness
-------------------------

The next section (``breaking-time:``) determines how long it takes to break the block. You need to configure ``max``, ``min`` and ``base``.

- **max**: This is the absolute longest it will ever take to break this block. No matter how states are configured the breaking time will never be longer than this.
- **min**: This is the absolute shortest it will ever take to break this block. No matter how states are configured the breaking time will never be shorter than this.
- **base**: This is how long it will take to break the block when no states have been activated.

.. tip:: Hardness is measured in ticks. 20 ticks is the same as 1 second.

Configuring the States
----------------------
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Configuring the Triggers
------------------------

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.