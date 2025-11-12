curl -L\
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $(cat ../token.gh)" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/ecarbonnel/graphes/actions/artifacts > gh-artifacts.json

curl -L\
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $(cat ../token.gh)" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/ecarbonnel/graphes/actions/artifacts/4472724959/zip --output artifacts.zip

unzip artifacts.zip
