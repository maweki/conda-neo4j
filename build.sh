mvn clean install -DskipTests
pwd
cd packaging/standalone/target
pwd
tar -vxzf neo4j-community-3.5.3-SNAPSHOT-unix.tar.gz
cp -vr neo4j-community-3.5.3-SNAPSHOT ${PREFIX}/neo4j
pwd

echo ${PREFIX}
mkdir -vp ${PREFIX}/bin
ln -s ${PREFIX}/neo4j/bin/neo4j ${PREFIX}/bin/neo4j
ln -s ${PREFIX}/neo4j/bin/neo4j-admin ${PREFIX}/bin/neo4j-admin
ln -s ${PREFIX}/neo4j/bin/neo4j-import ${PREFIX}/bin/neo4j-import
