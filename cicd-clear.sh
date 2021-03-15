# oc get rolebinding -n per-cicd

oc delete all --all -n ep-cicd
oc delete pvc gogs-data gogs-postgres-data nexus-pv sonardb sonarqube-data -n ep-cicd
oc delete rolebinding default_admin -n ep-cicd
oc delete cm gogs-config jenkins-slaves -n ep-cicd
oc delete sa gogs jenkins -n ep-cicd
oc delete secrets sonar-ldap-bind-dn sonar-pgsql -n ep-cicd

oc delete all --all -n ep-dev
oc delete all --all -n ep-stage
