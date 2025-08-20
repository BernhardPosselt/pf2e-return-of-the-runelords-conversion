# Return of the Runelords 2E Conversion (Unofficial)

This module includes actors and items from [Trey Bryner's Conversion](https://www.pathfinderinfinite.com/product/428355/Runelords-in-a-New-Age-A-Return-of-the-Runelords-2e-Conversion)

## License

All content is licensed under Paizo's [CUP](https://paizo.com/licenses/communityuse), the [OGL](./OpenGameLicense.md) and [ORC](./ORC.md) (because you can't use pure OGL content in the 2e system anymore and there's an exception for the Foundry system)

> This FoundryVTT module uses trademarks and/or copyrights owned by Paizo Inc., used under Paizo's Community Use Policy (paizo.com/licenses/communityuse). We are expressly prohibited from charging you to use or access this content. This FoundryVTT module is not published, endorsed, or specifically approved by Paizo. For more information about Paizo Inc. and Paizo products, visit [paizo.com](paizo.com).

## Releasing a New Version

Requires **zip**, **curl**, **jq**

First update the version in the module.json file, then run:

    ./release.sh 0.0.2 "$GITHUB_TOKEN" "$FOUNDRY_RETURN_CONVERSION_TOKEN"
