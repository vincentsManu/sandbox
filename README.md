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

## TO DO

- [x] run Kube-score ✅, regula ✅, popeye (bugged for latest k8s, to rerun), polaris ✅ on the configs/cluster
- [ ] remove references to Manupulse and set it as a param

# Sandboxing the LOFT

## Scenarii to be handled

- Proof of Technology
- Proof of Concept (partnership with startups)
- Proof of Integration (partnership with startups)

The range of technologies is vast but scewed towards recent technologies, hence help focusing the work on more modern ways of managing infrastructure.

## Range of infra/tech scenarii to be tested/automated in order to validate the above scenarii

Refer to [this](https://mfc.sharepoint.com/sites/Cloud2/SitePages/Products-&-Services.aspx) in order to get a view of what's possible.

### Disconnected from Manulife (Proof-of-Technology Environment)

[x] Deployment of Azure Kubernetes Service, with/without secured external endpoint access

[ ] Deployment of containers via Azure Container Instances, with/without secured external endpoint access

[ ] Deployment of Azure Container Registry/Azure Key Vault/Azure managed databases

[x] Deployment of Static frontend, with/without secured external endpoint access

### Connected from Manulife (Connected Sandbox Environment)

On top of the above tests, we ll add some tests

[ ] SSO
[ ] Connection to a selected list of services

Figure out which contacts/content will be needed for:

- Segment architect review of overall design and network topology, an-email attachment of the approval to expedite approval.
- Segment IT Governance (i.e.BUSO) review of overall design and network topology to expedite approval

## Security policies

### Regarding PII

### Regarding authentication/authorization

### Regarding infrastructure
