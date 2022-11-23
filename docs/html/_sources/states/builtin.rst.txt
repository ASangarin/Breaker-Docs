.. _doc_states_builtin:

Built-In States
===============

.. attention:: | Don't know how to read these tables? See :ref:`Configuring the States <doc_quickstart_configuration_states>`!

**Quick Reference:**

===================================== =
Type                                  Args
===================================== =
:ref:`effect<state_effect>`           :abbr:`type (String)`, :abbr:`level (Integer)`
:ref:`enchant<state_enchant>`         :abbr:`type (String)`, :abbr:`level (Integer)`
:ref:`exp<state_exp>`                 :abbr:`level (Boolean)`, :abbr:`amount (Double)`
:ref:`helditem<state_helditem>`       :abbr:`type (Spigot Material)`
:ref:`air<state_air>`                 *None*
:ref:`water<state_water>`             *None*
:ref:`sneaking<state_sneaking>`       *None*
:ref:`time<state_time>`               :abbr:`min (String or Integer)`, :abbr:`max (String or Integer)`
:ref:`unbreakable<state_unbreakable>` *None*
:ref:`rain<state_rain>`               :abbr:`thunder (Boolean)`
:ref:`world<state_world>`             :abbr:`name (String)`
:ref:`permission<state_permission>`   :abbr:`node (String)`
:ref:`mmcast<state_mmcast>`           :abbr:`skill (String)`
:ref:`mmvar<state_mmvar>`             :abbr:`key (String)`, :abbr:`varval (Double)`, :abbr:`higherthan (Boolean)`
:ref:`nbtstr<state_nbtstr>`           :abbr:`key (String)`, :abbr:`nbtval (String)`
:ref:`nbtbool<state_nbtbool>`         :abbr:`key (String)`, :abbr:`nbtval (Boolean)`
:ref:`nbtval<state_nbtval>`           :abbr:`key (String)`, :abbr:`nbtval (Integer)`
===================================== =

.. note:: Looking for :ref:`External Plugin States<doc_states_external>`?

----

Descriptions
-------------

Each state description includes everything you need to configure each individual state.

----

.. _state_effect:

- ``effect``

| Will check if the player has a specific potion effect.
| The effect must be the specified level or higher.

=========== ============ =
Argument    Type         Notes
=========== ============ =
type        String       Must be a valid `effect <https://hub.spigotmc.org/javadocs/bukkit/org/bukkit/potion/PotionEffectType.html>`_
level       Integer      ---
=========== ============ =

| **Example:** ``effect{type=LUCK;level=1}``
| The player must have the Luck Effect with an amplifier of 1 or higher.

----

.. _state_enchant:

- ``enchant``

| Will check if the players current item has a specific enchantment.
| The enchantment must be a specified level or higher.

=========== ============ =
Argument    Type         Notes
=========== ============ =
type        String       Must be a valid `enchantment <https://hub.spigotmc.org/javadocs/spigot/org/bukkit/enchantments/Enchantment.html>`_
level       Integer      ---
=========== ============ =

| **Example:** ``enchant{type=DIG_SPEED;level=2}``
| The item must have the Efficiency enchantment at level 2 or higher.

| You can also specify a custom enchantment by providing a namespace and a key.
| **Example:** ``enchant{type=example:myenchant}``

----

.. _state_exp:

- ``exp``

| Checks if the player has the specified amount of EXP.
| You can also check for the level of the player.

=========== ============ =
Argument    Type         Notes
=========== ============ =
amount      Double       ---
level       Boolean      If true, checks the players level instead
=========== ============ =

| **Example:** ``exp{amount=5;level=true}``
| Checks if the player is level 5 or higher.

----

.. _state_helditem:

- ``helditem``

| Checks if the player is holding a specific item type.

=========== ============ =
Argument    Type         Notes
=========== ============ =
type        String       Must be a valid `material <https://hub.spigotmc.org/javadocs/bukkit/org/bukkit/Material.html>`_
=========== ============ =

| **Example:** ``helditem{type=stick}``
| Checks if the player is holding a Stick.

----

.. _state_air:

- ``air``

This state has no args.

| **Example:** ``air{}``
| Checks if the player is currently airborne.

----

.. _state_water:

- ``water``

This state has no args.

| **Example:** ``water{}``
| Checks if the player is currently submerged.

----

.. _state_sneaking:

- ``sneaking``

This state has no args.

| **Example:** ``sneaking{}``
| Checks if the player is currently sneaking.

----

.. _state_time:

- ``time``

| Checks if the time is currently between the specified min and max ticks of the day.

=========== ================= =
Argument    Type              Notes
=========== ================= =
min         String or Integer See below
max         String or Integer See below
=========== ================= =

.. note:: | You can use these instead of an absolute tick value:
          | ``day``, ``noon``, ``sunset``, ``night``, ``midnight`` or ``sunrise``.

| **Example:** ``time{min=sunrise;max=sunset}``
| Checks if the time is currently between sunrise and sunset.

----

.. _state_unbreakable:

- ``unbreakable``

This state has no args.

| **Example:** ``unbreakable{}``
| Will always make the block completely unbreakable.

----

.. _state_rain:

- ``rain``

| Checks if it is currently raining.
| Can also check for thunderstorms.

=========== ============ =
Argument    Type         Notes
=========== ============ =
thunder     Boolean      Whether to check for thunderstorms or not.
=========== ============ =

| **Example:** ``rain{thunder=true}``
| Checks if the it is currently raining and thundering.

----

.. _state_world:

- ``world``

| Checks if the player is currently in a specific world.

=========== ============ =
Argument    Type         Notes
=========== ============ =
name        String       ---
=========== ============ =

| **Example:** ``world{name=world_nether}``
| Checks if the player is currently in "world_nether".

----

.. _state_permission:

- ``permission``

| Checks if the player has a specific permission.

=========== ============ =
Argument    Type         Notes
=========== ============ =
node        String       ---
=========== ============ =

| **Example:** ``permission{node=breaker.test.perm}``
| Checks if the player has the ``breaker.test.perm`` permission.

----

.. _state_mmcast:

- ``mmcast``

| Will check if the player is currently able to cast a specific MythicMobs skill.

=========== ============ =
Argument    Type         Notes
=========== ============ =
skill       String       Must be a valid MythicMobs skill
=========== ============ =

| **Example:** ``mmcast{skill=TestSkill}``
| The player must meet all the conditions for casting "TestSkill".

----

.. _state_mmvar:

- ``mmvar``

| Will compare a numeric MythicMobs variable with the specified value.

=========== ============ =
Argument    Type         Notes
=========== ============ =
key         String       Must be a valid MythicMobs variable
varval      Integer      ---
higherthan  Boolean      Will also check if the variable is higher
=========== ============ =

| **Example:** ``mmvar{key=test;varval=10;higherthan=true}``
| The MythicMobs variable "test" must be 10 or higher.

----

.. _state_nbtstr:

- ``nbtstr``

| Checks if the current held item's NBT matches the specified String.

=========== ============ =
Argument    Type         Notes
=========== ============ =
key         String       The path to the NBT value
nbtval      String       The string to compare to
=========== ============ =

| **Example:** ``nbtstr{key=MMOITEMS_ITEM_ID;nbtval=TEST_SWORD}``
| The string of the NBT path: 'MMOITEMS_ITEM_ID' must be 'TEST_SWORD'.

----

.. _state_nbtbool:

- ``nbtbool``

| Checks if the current held item's NBT matches the specified Boolean.

=========== ============ =
Argument    Type         Notes
=========== ============ =
key         String       The path to the NBT value
nbtval      Boolean      The boolean to compare to
=========== ============ =

| **Example:** ``nbtbool{key=example_path;nbtval=true}``
| The boolean of the NBT path: 'example_path' must be true.

----

.. _state_nbtval:

- ``nbtval``

| Checks if the current held item's NBT matches the specified Integer.

=========== ============ =
Argument    Type         Notes
=========== ============ =
key         String       The path to the NBT value
nbtval      Integer      The numeric to compare to
=========== ============ =

| **Example:** ``nbtval{key=CustomModelData;nbtval=20}``
| The integer of the NBT path: 'CustomModelData' must be 20.