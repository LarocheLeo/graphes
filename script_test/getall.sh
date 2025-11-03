#!/bin/bash

#seulement le 1er 
source token.gh
x=4329254215

echo "Téléchargement de l’artifact $x ..."
curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $TOK" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
   https://api.github.com/repos/LarocheLeo/graphes/actions/artifacts/$x/zip \
  --output artifact_$x.zip
mkdir artifact_$x
unzip -q "artifact_$x.zip" -d "artifact_$x"

#tout les artéfacts 

#while read -r ID; do
#    echo "Téléchargement de l’artifact $ID ..."
#    curl -L \
#      -H "Accept: application/vnd.github+json" \
#      -H "Authorization: Bearer $TOK" \
#      -H "X-GitHub-Api-Version: 2022-11-28" \
#      https://api.github.com/repos/LarocheLeo/graphes/actions/artifacts/$ID/zip \
#      --output "artifact-$ID.zip"
#     mkdir artifact_$ID
#     unzip -q "artifact_$ID.zip" -d "artifact_$ID"
#done < liste-id.txt

