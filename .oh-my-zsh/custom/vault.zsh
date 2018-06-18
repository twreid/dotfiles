# Alias

alias vtr="vault token-renew"

# Functions

function vault_login() {
  python3 ${AWS_SAML_SCRIPT}  
  aws_key=$(cat ~/.aws/credentials | grep -w aws_access_key_id | awk '{ print $3 }')
  aws_secret=$(cat ~/.aws/credentials | grep -w aws_secret_access_key | awk '{ print $3 }')
  aws_token=$(cat ~/.aws/credentials | grep -w aws_session_token | awk '{ print $3 }')
  
  echo "aws_key: ${aws_key}"
  echo "aws_secret: ${aws_secret}"
  echo "aws_token: ${aws_token}"

  vault auth -method=aws role=adfs-developers \
  aws_access_key_id=${aws_key} \
  aws_secret_access_key=${aws_secret} \
  aws_security_token=${aws_token}
}