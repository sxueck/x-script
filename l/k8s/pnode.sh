#!/bin/bash

namespace=$1
if [ ! -n "$namespace" ];then
    echo "your can use"
    echo "./pnode.sh namespace"
    namespace="default"
fi

check_kubectl() {
    ok=$(kubectl config current-context > /dev/null 2>&1 && echo "ok")
    if [ "$ok" != "ok" ];
    then
        echo "kubeconfig or kubectl config error";
        exit 1;
    fi
}

obtain_pods_nodes() {
    podsName=$(kubectl get pods -n $namespace | awk 'NR == 1 {next} {print $1}')
    for i in $podsName
    do
        node=$(kubectl describe pods -n $namespace $i | grep Node: | awk '{print $2}' | awk -F '/' '{print $1}')
        echo "$i / $node";
    done
}

check_kubectl
obtain_pods_nodes
