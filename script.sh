oc delete -f .
oc create -f https://raw.githubusercontent.com/tektoncd/catalog/master/task/git-clone/0.1/git-clone.yaml
oc create -f https://raw.githubusercontent.com/tektoncd/catalog/master/task/maven/0.1/maven.yaml
oc create -f https://raw.githubusercontent.com/tektoncd/catalog/master/task/maven/0.1/tests/resources.yaml
oc create -f clusterrolebindings.yaml
oc create -f s2i-binary.yaml
oc create -f pipeline.yaml
