# acr-tf

In this template, we are creating standard approch of ACR template with enabling premium sku. The perameters that has been covered as below.

- admin enabled
- georeplication locations
- zone redudancy
- Container inside repo retention policy that we have selected 30 days.

# To use this teamplate.

- Here we have created template where added default values at the variable.tf files. If anyone wanted to modify, they can easily go there and change.

- Also, we have used/added values at var.tfvars. Such that if anyone want to use "terrform plan -var-file="var.tfvars"" command.

