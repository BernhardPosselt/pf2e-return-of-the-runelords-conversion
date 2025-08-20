#!/usr/bin/env bash

# Run with ./release.sh 0.0.2 "$GITHUB_TOKEN" "$FOUNDRY_RETURN_CONVERSION_TOKEN"
# requires zip, curl, jq

set -e

version="$1"
token="$2"
ftoken="$3"

./package.sh "$1"

# push new code
git add module.json
git commit -m "Release $version"
git tag "$version"
git push
git push --tags

# upload release zip
id=$(curl --no-progress-meter -X POST -H "Accept: application/vnd.github.v3+json" -H "Authorization: token $token" "https://api.github.com/repos/BernhardPosselt/pf2e-return-of-the-runelords-conversion/releases" -d "{\"tag_name\":\"$version\",\"target_commitish\":\"master\",\"name\":\"$version\",\"body\":\"\",\"draft\":false,\"prerelease\":false,\"generate_release_notes\":false}" | jq ".id")
curl -X POST -H "Accept: application/vnd.github.v3+json" -H "Authorization: token $token" -H "Content-Type: application/zip" "https://uploads.github.com/repos/BernhardPosselt/pf2e-return-of-the-runelords-conversion/releases/$id/assets?name=release.zip" --data-binary "@build/release.zip"
# call foundry api
curl -X POST -H "Content-Type: application/json" -H "Authorization: $ftoken" -d "{\"id\":\"pf2e-return-of-the-runelords-conversion\",\"dry-run\":false,\"release\":{\"version\":\"$version\",\"manifest\":\"https://raw.githubusercontent.com/BernhardPosselt/pf2e-return-of-the-runelords-conversion/$version/module.json\",\"notes\":\"https://github.com/BernhardPosselt/pf2e-return-of-the-runelords-conversion/blob/master/CHANGELOG.md\",\"compatibility\":{\"minimum\":\"13\",\"verified\":\"13\"}}}" "https://api.foundryvtt.com/_api/packages/release_version/"