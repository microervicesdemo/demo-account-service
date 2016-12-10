FROM java:8
copy javaagent /usr/src/appdynamics/javaagent
COPY poc-account-environment.properties /usr/src/poc-account-environment.properties
COPY microservice-demo-accounts-0.0.1-SNAPSHOT.jar /usr/src/microservice-demo-accounts-0.0.1-SNAPSHOT.jar
WORKDIR /usr/src
CMD java -javaagent:"/usr/src/appdynamics/javaagent/javaagent.jar" -Dconfig.home="/usr/src" -Dappdynamics.agent.applicationName="poc-account-service" -Dappdynamics.agent.tierName="poc-account-service-tier" -Dappdynamics.agent.nodeName="poc-account-service-node"${nodeid} -jar microservice-demo-accounts-0.0.1-SNAPSHOT.jar