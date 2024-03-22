

REPOSITORY_URL=730335579287.dkr.ecr.us-east-1.amazonaws.com/example
#REPOSITORY=$(terraform output -raw repository_url)
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $REPOSITORY
