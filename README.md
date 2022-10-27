# Estudos de Terraform

Projeto de estudos sobre Terraform com AWS.

## Para abrir o projeto

Recomendo o uso do vscode. Ao abrir o vscode, não abra a pasta do projeto, mas abra o projeto pelo arquivo de workspace que se encontra na pasta raiz. Ele traz recomendação e algumas extensões que ajudam no desenvolvimento.

## Para rodar o projeto

1. Tenha uma conta aws
2. Instale o [Terraform](https://www.terraform.io/downloads)
3. Instale o [AWS CLI](https://aws.amazon.com/pt/cli/)
4. Instale o [aws-iam-authenticator](https://docs.aws.amazon.com/eks/latest/userguide/install-aws-iam-authenticator.html)
5. Instale o [Kubernetes](https://kubernetes.io/releases/download/)
6. Instale o [kubeclt](https://kubernetes.io/docs/tasks/tools/)

## Usando o Terraform

1. Para iniciar o projeto em sua maquina utilize o comando **terraform init**
2. Para validar as alterações **terraform plan**
3. Para fazer o deploy **terraform apply --auto-approve**
4. Para remover todos os itens criados **terraform destroy**
