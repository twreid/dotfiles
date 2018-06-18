# aliases
alias aws-login="python3 ${AWS_SAML_SCRIPT}"


# Functions

function check-cft() {
  for n in $(find cf -type f); do 
    aws cloudformation validate-template --template-body file://$n &> /dev/null || echo $n
  done
}