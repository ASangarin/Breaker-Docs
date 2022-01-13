.. _doc_states_external:

External Plugin States
======================

External Plugin States are states that are supplied (or require) an external plugin.
You will not be able to use these without having installed the plugin in question.

.. attention:: | Don't know how to read these tables? See :ref:`Configuring the States <doc_quickstart_configuration_states>`!

**Quick Reference:**

======================================= ============ =
Type                                    Plugin       Args
======================================= ============ =
:ref:`mmoattribute<state_mmoattribute>` MMOCore      :abbr:`name (String)`, :abbr:`level (Integer)`
:ref:`mmoclass<state_mmoclass>`         MMOCore      :abbr:`name (String)`
:ref:`mmoexp<state_mmoexp>`             MMOCore      :abbr:`level (Boolean)`, :abbr:`amount (Double)`
:ref:`mmopoint<state_mmopoint>`         MMOCore      :abbr:`type (String)`, :abbr:`amount (Integer)`
:ref:`mmoprof<state_mmoprof>`           MMOCore      :abbr:`name (String)`, :abbr:`level (Integer)`
:ref:`mmoresource<state_mmoresource>`   MMOCore      :abbr:`type (String)`, :abbr:`amount (Integer)`
:ref:`mmcast<state_mmcast>`             MythicMobs   :abbr:`skill (String)`
:ref:`mmvar<state_mmvar>`               MythicMobs   :abbr:`key (String)`, :abbr:`varval (Double)`, :abbr:`higherthan (Boolean)`
:ref:`techentry<state_techentry>`       TechTree     :abbr:`entry (String)`
:ref:`money<state_money>`               Vault        :abbr:`amount (Double)`
:ref:`region<state_region>`             WorldGuard   :abbr:`name (String)`
======================================= ============ =

.. note:: Looking for :ref:`Built-In States<doc_states_builtin>`?

----

.. _states_mmocore:

MMOCore
-------------

These are the states provided by `MMOCore <https://mythiccraft.io/index.php?resources/mmocore.395/>`_.

----

.. _state_mmoattribute:

- ``mmoattribute``

Checks if the player has enough points in an attribute.

=========== ============ =
Argument    Type         Notes
=========== ============ =
name        String       Must be a valid attribute
level       Integer      ---
=========== ============ =

| **Example:** ``mmoattribute{name=strength;level=10}``
| Player must have at least 10 points in Strength.

----

.. _state_mmoclass:

- ``mmoclass``

Checks if the player has the specified class.

=========== ============ =
Argument    Type         Notes
=========== ============ =
name        String       Must be a valid class
=========== ============ =

| **Example:** ``mmoclass{name=rogue}``
| The player must be a rogue.

----

.. _state_mmoexp:

- ``mmoexp``

| Checks if the player has the specified amount of MMOCore EXP.
| You can also check for the MMOCore Class level of the player.

=========== ============ =
Argument    Type         Notes
=========== ============ =
amount      Double       ---
level       Boolean      If true, checks the players level instead
=========== ============ =

| **Example:** ``mmoexp{amount=5,level=true}``
| Checks if the player is MMOCore Class level 5 or higher.

----

.. _state_mmopoint:

- ``mmopoint``

| Checks if the player has the specified amount of points or higher of the specified type.

=========== ============ =
Argument    Type         Notes
=========== ============ =
type        String       Must be either: ``class``, ``skill``, ``attribute``, or ``recollection``
amount      Integer      ---
=========== ============ =

| **Example:** ``mmopoint{type=class,amount=10}``
| The player must have at least 10 class points.

----

.. _state_mmoprof:

- ``mmoprof``

| Checks if the player is the specified level (or higher) in the specified profession.

=========== ============ =
Argument    Type         Notes
=========== ============ =
name        String       Must be a valid profession
amount      Integer      ---
=========== ============ =

| **Example:** ``mmoprof{name=mining,level=6}``
| The player must level 6 or higher in Mining.

----

.. _state_mmoresource:

- ``mmoresource``

| Checks if the player has the specified amount (or higher) of the specified resource.

=========== ============ =
Argument    Type         Notes
=========== ============ =
type        String       Must be either: ``mana``, ``stamina``, or ``stellium``
amount      Integer      ---
=========== ============ =

| **Example:** ``mmoresource{type=stamina;amount=50}``
| The player must have at least 50 stamina.

----

.. _states_mythicmobs:

MythicMobs
-------------

These are the states provided by `MythicMobs <https://mythiccraft.io/index.php?resources/mythicmobs.1/>`_.

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

TechTree
-------------

These are the states provided by `TechTree <https://www.spigotmc.org/resources/techtree.98962/>`_.

----

.. _state_techentry:

- ``techentry``

| Will check if the player has unlocked a specific tech entry.

=========== ============ =
Argument    Type         Notes
=========== ============ =
entry       String       Must be a valid path to a tech entry (``tree.entry``)
=========== ============ =

| **Example:** ``techentry{entry=testtree.testentry}``
| The player must have unlocked the "Test Entry" in "Test Tree"

----

Vault
-------------

These are the states provided by `Vault <https://www.spigotmc.org/resources/vault.34315/>`_.

----

.. _state_money:

- ``money``

| **MUST HAVE A VALID ECONOMY PLUGIN INSTALLED!**
| Will check if the player have the specified amount (or higher) in their balance.

=========== ============ =
Argument    Type         Notes
=========== ============ =
amount      Double       ---
=========== ============ =

| **Example:** ``money{amount=2.6}``
| The player must have at least '2.6' in their balance.

----

WorldGuard
-------------

These are the states provided by `WorldGuard <https://dev.bukkit.org/projects/worldguard>`_.

----

.. _state_region:

- ``region``

| Will check if the player is in a specific WG region.

=========== ============ =
Argument    Type         Notes
=========== ============ =
name        String       ---
=========== ============ =

| **Example:** ``region{name=testregion}``
| The player must be inside a region called "testregion".
