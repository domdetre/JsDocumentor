cd /sources

echo '<ul>' > /docs/index.html

for dir in `ls`
do
    echo $dir

    cd $dir
    mkdir -p /docs/$dir
    echo "{
        \"source\": \"./src\",
        \"destination\": \"/docs/$dir\",
        \"plugins\": [
            {\"name\": \"esdoc-standard-plugin\"},
            {\"name\": \"esdoc-ecmascript-proposal-plugin\", \"option\": {\"all\": true}}
        ]
    }" > .esdoc.json

    /root/node_modules/.bin/esdoc

    cd ..

    echo "<li><a href='$dir/index.html'>$dir</a></li>" >> /docs/index.html
done

echo '</ul>' >> /docs/index.html