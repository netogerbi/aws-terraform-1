# Terraform & AWS Lab - Basic

## Util Commands

```bash
terraform init
```

```bash
terraform plan [-out="tfplan.out"]
```

```bash
terraform apply [-var-file="prod.tfvars"] [-var="environment=dev"] [-auto-approved] ["tfplan.out"]
```

```bash
terraform destroy [-var-file="prod.tfvars"] [-var="environment=dev"] [-auto-approved] ["tfplan.out"]
```
