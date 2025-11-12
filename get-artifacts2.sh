tok=$(cat ../token.gh)

jq '.artifacts[],id' gh-artifacts.json >liste_id

mkdir -p out/
for a in $(cat liste_id)
do
	echo "requete $a"
	curl -L \
	  -H "Accept: application/vnd.gihub+json" \
	  -H "Authorization: Bearer $tok" \
	  -H "X-GitHub-Api-Version: 2022-11-28" \
	  --output out/$a \
	  https://api.github.com/repos/ecarbonnel/graphes/actions/artifacts/$a/zip 2>/dev/null
done
