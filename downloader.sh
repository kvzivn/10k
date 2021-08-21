# get all pages
curl -L 'https://spacebudz.io/explore/spacebud/[1-10000]' -o '#1.html'

# get all images
grep -Eoh 'https://ipfs[a-zA-Z0-9./?=_%:-]*' *.html >urls.txt

# download all images
sort -u urls.txt | wget -i- -P images


n=1; for f in *; do mv "$f" "$((n++)).png"; done