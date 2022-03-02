## Requirements

- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [helm](https://helm.sh/docs/intro/install/)
- [flux](https://fluxcd.io/docs/installation/)
- [mkcert](https://github.com/FiloSottile/mkcert)
- [sops](https://github.com/mozilla/sops)
- [age](https://github.com/FiloSottile/age)

## Setup a local cluster

[README](./cluster/local-cluster-init/)

## Set runtime components

[README](./runtime/)

## Add tracing

[README](./tracing/)

## TO DO

- [x] run Kube-score ✅, regula ✅, popeye (bugged for latest k8s, to rerun), polaris ✅ on the configs/cluster