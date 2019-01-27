#!/bin/sh

db="smd"
zdb="./bin/zdb"
hasqd="./bin/hasqd"

echo "Creating database..."
[ ! -f "slice/$db.db/db.traits" ] && "$zdb" "create $db.db $db $(echo $db | tr '[:lower:]' '[:upper:]') 1 [magic] 100 0 -1" || echo "$db.db already exists"

echo "Preparing client..."
sed -i -E "s/(const G_DB_HASH = ').*(';)/\1$db\2/" ./slice/home/ui/ts_ui_doc_main.js

echo "Starting HASQ..."
$hasqd webdir=home skckey=hasq console=yes dprn=1 dpul=1 dced=1 dwkr=1 cycle=10000 zlim=10