# Terraform + AWS Learning

## Utils
  - tfenv
  - aws vault
  - aws cli

## Commands

```bash
terraform fmt --recursive

terraform init

terraform plan -var="env=dev" -var="othervar=value" -out="tfplan.out"

terraform apply "tfplan.out" -var="env=dev" -var="othervar=value" -auto-approve

terrform destroy -auto-approve
```

***initiating backends (check remote state folder)***

```bash
terrform init -backend=true \
  -backend-config="bucket=tfstate-411545821635" \
  -backend-config="key=dev/terraform-state-01/terraform.tfstate" \
  -backend-config="region=us-east-1" \
  -backend-config="profile=neto-terraform-1" \

terraform init -backend=true -backend-config="backend.hcl"
```

***sending tfstate to bucket (check remote state folder)***
```bash
terraform state push terraform.tfstate
```

***terraform output***
```bash
terraform output -json

terraform output ami
```
> ami is just a name of a configuration on output file