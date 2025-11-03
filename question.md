#  TP: Mise en œuvre d’une intégration continue pour de la production de graphe réseaux avec Graphviz

## 1 Utilisation en local

### Q1.2 - Vérifier la présence et le contenu du fichier output.svg : l’ouvrir avec l’application par défaut (en tant qu’image). Essayer de zoomer. Quel est l’intérêt principal des images au format SVG 

Il n'y a pas de dégradation de la qualiter de l'image. 

### Q1.3 - Ouvrir le fichier avec un éditeur texte et observer le contenu. Quelle est la nature de la syntaxe de ce fichier ?

Il y a des balises. 

### Q1.5 - Créer un script run1.sh contenant ceci : Vérifier les deux fichiers générés, et donner leur taille :

svg : 2,9 kb
png : 12,5 kb

### Q2.17 - Exécuter la commande suivante :
### $ jq ’.artifacts[]’ gh-artifacts.json et comparer avec le contenu du fichier d’origine : vous récupérez uniquement le contenu du tableau "artifacts"

on a exactement les mêmes donner

### Q2.18 - Dans le fichier .yml, vous avez donné un nom à l’artifact. Ce nom apparait dans le fichier JSON.

oui 

### Quelle est la clé sous laquelle ce nom apparait dans le tableau ?

name 

### Proposer un filtre pour jq qui permet de récupérer l’ensemble des ID de tous les artefacts, et
rediriger vers un fichier liste-id.txt.

jq '.artifacts[].name' gh-artifacts.json > liste-id.txt

