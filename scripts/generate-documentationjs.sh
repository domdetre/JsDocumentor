cd /sources

echo '<ul>' > /docs/index.html

for dir in `ls`
do
    echo $dir

    cd $dir
    mkdir -p /docs/$dir

    /root/node_modules/.bin/documentation build -o /docs/$dir -f html src/**

    cd ..

    echo "<li><a href='$dir/index.html'>$dir</a></li>" >> /docs/index.html
done

echo '</ul>' >> /docs/index.html