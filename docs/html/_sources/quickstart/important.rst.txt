.. _doc_quickstart_important:

Important Information
=====================

.. important:: Please carefully read everything on this page before you use this plugin, ask for any help or make an issue on GitLab.

- | **The Breaker System**:
  | The breaking system (for blocks that are configured by Breaker) is a custom system written using packets. This means that weird bugs **WILL** happen from time to time and it is not expected to work 100% as expected.
  |
  | Please report any bugs you discover on the `GitLab Issues Page <https://git.mythiccraft.io/ASangarin/breaker/-/issues>`_.
- | **Incompatibilities**:
  | Breaker should be compatible with most plugins, however there is one Minecraft feature which does not work well with Breaker. For the breaking system to function properly, it utilizes the ``Mining Fatigue`` potion effect, meaning that players can easily get rid of any *Mining Fatigue* by simply hitting a block with a Breaker configuration. This can't be avoided as Breaker is dependent on the potion effect at all times. (Small information for the curious, the only place in vanilla where the Mining Fatigue effect is applied is when a player is approaching an Ocean Monument or attacked by an Elder Guardian's default attack.)
- | **Unsupported Blocks**:
  | Due to the nature of Minecraft, every vanilla block with a `hardness <https://minecraft.fandom.com/wiki/Breaking#Blocks_by_hardness>`_ of 0 can't be changed. These blocks include: Most Plants, Redstone, Tripwire (Hooks), TNT, etc.
- | **Commands and Permissions**:
  | There are two permission nodes in Breaker. ``breaker.admin`` gives access to all admin related features of Breaker. ``beaker.use`` is used if you enable the permission rule. If so, Breaker's custom speeds will only apply to players with this permission. All commands are sub-categorized under ``/breaker``.