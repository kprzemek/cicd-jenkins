# oc get rolebinding -n per-cicd

oc delete all --all
oc delete pvc gogs-data gogs-postgres-data nexus-pv sonardb sonarqube-data
oc delete rolebinding default_admin -n per-cicd
oc delete cm gogs-config jenkins-slaves -n per-cicd
oc delete sa gogs jenkins -n per-cicd
oc delete secrets sonar-ldap-bind-dn sonardb -n per-cicd