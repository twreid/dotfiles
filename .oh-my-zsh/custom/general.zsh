# Aliases
alias dbv3='docker build -t v3 ${BOTVILLE}/docker/Docker'
alias drv3='docker run -it -p 7800:7800 -p 7100:7100 -m 8192M --memory-reservation 6144M -e VAULT_TOKEN="$(cat ~/.vault-token | awk '\''{ print }'\'')" "v3:latest"'
alias bv3='${BOTVILLE}/v3-list/gradlew clean build check test war && yes | cp ${BOTVILLE}/v3-list/build/libs/ROOT.war ${BOTVILLE}/docker/Docker'
