.. _doc_quickstart_configuration:

Configuration
===============

Breaker allows you to change the breaking speeds of almost any block you desire.
The plugin has a lot of flexibility/customization and therefore can seem complex, but it should be relatively simple once you get the hang of things.
This page of the docs will guide you through key-terms, link you to relevant pages and describe carefully how to modify the breaking speeds to your liking.

.. note:: | **Fun Fact:** Breaker Legacy used to have a much more confusing configuration syntax.
          | Luckily, the current syntax is much like the MythicMobs syntax and therefore should make things a bit easier to learn!

-------------------------

Configuration Basics
----------------------

How does the configuration work? To understand this we need a short introduction to Breakers calculations
and how how it affects the breaking speeds.

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
    
    hardness: # This value is in ticks!
      base: 20 # This value is optional! If not specified, the base value will use the max breaking time.
      # The base value is the time it takes to break the block if no states have activated.
      min: 5 # The minimum amount of ticks it should take to break the block
      max: 30 # The maximum amount of ticks it should take to break the block
    
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

----------------------------

Configuring the Block Provider
----------------------------------

The first line ``block: IRON_BLOCK`` represents the :ref:`Block Provider <doc_mechanics_providers>` and is currently using the Material provider.
For example, setting this as ``GOLD_BLOCK`` will make all Gold Blocks use this configuration for their breaking times (Instead of Iron Blocks as seen in the example).

For a better understanding of how to configure this, please see the :ref:`Block Provider <doc_mechanics_providers>` page.

-----------------------------

.. _doc_quickstart_configuration_hardness:

Configuring the Hardness
-------------------------

The next section (``hardness:``) determines how long it takes to break the block. You need to configure ``max``, ``min`` and ``base``.

- **max**: This is the absolute longest it will ever take to break this block. No matter how states are configured the breaking time will never be longer than this.
- **min**: This is the absolute shortest it will ever take to break this block. No matter how states are configured the breaking time will never be shorter than this.
- **base**: This is how long it will take to break the block when no states have been activated.

.. tip:: Hardness is measured in ticks. 20 ticks is the same as 1 second.

.. admonition:: :ref:`Configuring Hardness with MythicMobs <doc_mythic_hardness>`

    If you have **MythicMobs** installed, you can use the variable system to control the hardness value of your blocks.

    See :ref:`Configuring Hardness with MythicMobs <doc_mythic_hardness>`.

-------------------------

.. _doc_quickstart_configuration_states:

Configuring the States
----------------------
.. note:: See :ref:`Built-In States <doc_states_builtin>` or :ref:`External Plugin States <doc_states_external>` for a list of usable state types.

The ``states:`` part of the configuration contains a :abbr:`list (YAML Format)` of conditions that change the breaking value if met.
The syntax for states is ``statetype{argument=value;argument2=othervalue;}``

``statetype`` is replaced with what kind of condition you want.
Arguments change depending on which state type you use. There are two arguments that will work in any state.

- The first is ``value`` (*default = 1*), which change how much the condition should change the breaking speed. For example, if the blocks current **Hardness** is :abbr:`20 (The configured base hardness)` and you have a value of :abbr:`5 (The value of the state)`, the final **Hardness** will be :abbr:`15 (20 - 5 = 15)` if the condition is met.
- The second is ``required`` (*default = false*), which will make the block unbreakable if the condition isn't met. All *required* states must be met before a block becomes breakable.

.. tip:: | You don't have to specify either ``value`` or ``required``.
         | If they are not present in your state configuration, Breaker will merely use their default values. 

| In the example we have ``helditem{type=diamond_pickaxe;value=5}``, using the Held Item State.
| The argument provided is ``type=diamond_pickaxe``, which is a :abbr:`state-specifc argument (Read more about these types of arguments on the respective state page.)`.
| The ``value`` determines how much :abbr:`faster (In ticks)` the block will be broken.

This example makes the block break 5 ticks faster, if the player is holding a **Diamond Pickaxe**.

---------------------------

.. _doc_quickstart_configuration_triggers:

Configuring the Triggers
--------------------------
.. note:: See :ref:`Triggers <doc_mechanics_triggers>` for a list of usable triggers and functions.

The ``triggers:`` part of the configuration contains a :abbr:`list (YAML Format)` of triggers that execute during block breaking.
The syntax for triggers is ``triggertype{function=arg}``

``triggertype`` is replaced with the type of trigger you want.
The function determines *what* happens once the trigger activates. All functions take a string as argument.

.. tip:: | ``start``, ``break`` and ``stop`` triggers all execute at the same time if a block is instantly broken.

| In the example we have ``break{command="say I broke a block!"}``, using the break :abbr:`trigger type (Read more about trigger types on the trigger page.)`.
| The :abbr:`function (Read more about functions on the trigger page.)` used is ``command``, which is configured to run ``say I broke a block!``.

This example makes the player run the command: "*say I broke a block!*", **when** they break the block.