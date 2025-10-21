source token.gh

curl \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $TOK" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
   https://api.github.com/repos/LarocheLeo/graphes/actions/artifacts >gh-artifacts.json

curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $TOK" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
   https://api.github.com/repos/LarocheLeo/graphes/actions/artifacts/4329254215/zip \
  --output artifact.zip

unzip artifact.zip
