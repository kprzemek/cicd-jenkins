# oc get rolebinding -n per-cicd

oc delete all --all -n per-cicd
oc delete pvc gogs-data gogs-postgres-data nexus-pv sonardb sonarqube-data -n per-cicd
oc delete rolebinding default_admin -n per-cicd
oc delete cm gogs-config jenkins-slaves -n per-cicd
oc delete sa gogs jenkins -n per-cicd
oc delete secrets sonar-ldap-bind-dn sonardb -n per-cicd

oc delete all --all -n per-dev
oc delete all --all -n per-stage
