# Return of the Runelords 2E Conversion (Unofficial)

This module includes actors and items from [Trey Bryner's Conversion](https://www.pathfinderinfinite.com/product/428355/Runelords-in-a-New-Age-A-Return-of-the-Runelords-2e-Conversion)

It includes several changes, some of which are likely mistakes, among those:

* Remastered: All abilities, spells and equipment have been remastered
* Adjusted rarity modifiers: Unique for named NPCs, uncommon for NPCs related to the adventure
* For some statblocks that use Weak/Elite and have additional modifications, the Weak/Elite template has been included in the stats itself so you can add/remove them an additional time
* Increased damage for non-scaled weapon damage like the Shuriken (upped to moderate damage for its level) or 2d8+3 damage instead of 1d8+4 for a level 6 low damage creature (misunderstanding here might be that not having a striking rune on their weapon halves NPC damage)
* Changes to spell DCs and attack rolls that are either based on caster NPCs or have DC/Attack raised to Elite/Weak but not the other stat or are way too low for their level (NPC spell attack modifiers are not equal to DC-10 but usually DC-8)

## Asset Locations

Assets are expected in a folder at **Data/pf2e-return-of-the-runelords-assets**

The following locations are used:

TODO: detail all portrait, token and item locations

## Token Sizes

Non medium sized tokens with the following Subject Scale Correction require the following Scale settings:

* 1.5x 
  * tiny: 1.5
  * small: 1.2
* 2x tokens require the following scaling factors
  * small: 1.6

## License

All content is licensed under Paizo's [CUP](https://paizo.com/licenses/communityuse) to be able to use parts of their product identity such as proper names; game mechanics are licensed under the [OGL](./OpenGameLicense.md) and [ORC](./ORC.md) (because you can't use pure OGL content in the 2e system anymore and there's an exception for the Foundry system)

> This FoundryVTT module uses trademarks and/or copyrights owned by Paizo Inc., used under Paizo's Community Use Policy (paizo.com/licenses/communityuse). We are expressly prohibited from charging you to use or access this content. This FoundryVTT module is not published, endorsed, or specifically approved by Paizo. For more information about Paizo Inc. and Paizo products, visit [paizo.com](paizo.com).

## Releasing a New Version

Requires **zip**, **curl**, **jq**

First update the version in the module.json file, then run:

    ./release.sh 0.0.2 "$GITHUB_TOKEN" "$FOUNDRY_RETURN_CONVERSION_TOKEN"
