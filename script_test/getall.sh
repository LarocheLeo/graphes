#!/bin/bash
source token.gh
x=$(head -1 liste-id.txt)

# télécharger l'artéfact le plus récent du fichier liste-id.txt
echo "Téléchargement de l'artéfact récent : $x ..."
curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $TOK" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/LarocheLeo/graphes/actions/artifacts/$ID/zip \
  --output "artifact-$x.zip"


# télécharger tout les artéfacts du fichier liste-id.txt
#!/bin/bash
#source token.gh

#while read -r ID; do
#    echo "Téléchargement de l’artifact $ID ..."
#    curl -L \
#      -H "Accept: application/vnd.github+json" \
#      -H "Authorization: Bearer $TOK" \
#      -H "X-GitHub-Api-Version: 2022-11-28" \
#      https://api.github.com/repos/LarocheLeo/graphes/actions/artifacts/$ID/zip \
#      --output "artifact-$ID.zip"
#done < liste-id.txt
