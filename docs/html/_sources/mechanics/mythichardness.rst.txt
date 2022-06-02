.. _doc_mythic_hardness:

Configuring Hardness with MythicMobs
======================================

It is possible for Breaker to get the value of a MythicMobs variable and then use it as the blocks hardness. This can be used to give even more freedom when it comes to hardness calculations, as you now have access to placeholder values, math and more.

Before calculating the block breaking speeds, Breaker will run a MythicMobs skill (of your choice), that will be used to set the value of a variable (also of your choice).
Breaker will then read the value of the variable and use that as the hardness of the block.

.. tip::
   Note that Breaker will still use the min and max values, so if the variable value is 20 and the max value is 10, then the hardness will still be set to 10.

**Sample Breaker Configuration:**

::

    block: IRON_BLOCK
    
    hardness:
      base: 20
      min: 5
      max: 30
      mythic:
        skill: SetVarSkill #The name of the mythic skill to run before calculating block speeds.
        variable: my_variable #The name of the variable that Breaker should take the value from.
        scope: target #The variable scope. "target" is highly recommended.
    
    states: [] # States are redudant when using MythicMobs to calculate the hardness.
    triggers: [] # You can still configure triggers as usual.

**Sample MythicMobs Skill:**

::

    SetVarSkill:
      Skills:
      - setvariable{var=my_variable;scope=target;val=10}