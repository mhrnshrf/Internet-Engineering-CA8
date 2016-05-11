if [ -z "$CATALINA_HOME" ]; then
    echo "The environment variable CATALINA_HOME must be set to the root of the Tomcat installation directory"
    exit 1
fi  

rm -rf target
mkdir target
mkdir target/WEB-INF
mkdir target/WEB-INF/classes
mkdir target/admin
javac -sourcepath src -classpath $CATALINA_HOME/lib/servlet-api.jar -d target/WEB-INF/classes src/far/*.java
cp conf/web.xml target/WEB-INF
cp pages/* target/

cp adminpages/* target/admin
