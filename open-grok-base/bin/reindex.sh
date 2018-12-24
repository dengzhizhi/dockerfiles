if [ ! -e /var/opengrok/etc ]; then
    mkdir -p /var/opengrok/etc
fi

if [ ! -e /var/opengrok/src ]; then
    mkdir -p /var/opengrok/src
fi

opengrok-indexer -C -j /usr/lib/jvm/bin/java -J=-Djava.util.logging.config.file=/logging.properties -J-Xmx2048m -J-Xms2048m -a /opengrok/lib/opengrok.jar -- -s /var/opengrok/src -d /var/opengrok/data -H -P  -S -G -W /var/opengrok/etc/configuration.xml -U http://localhost:8080/source
