#!/bin/bash
#
# extrair_usuario.sh - Busca e extrai os usuários do /etc/passwd, 
# havendo a possibilidade de colocar em maisúsculo e em ordem alfabética
#
# Site: https://douglasalavarse.com/
# Author: Douglas Alavarse
# e-mail: alavarsedouglas@gmail.com
#
# ----------------------------------------------------------------------
# Este programa recebe os dados do /etc/passwd e formata, através 
# de manipulação de texto, para que sejam exibidos todos usuários 
# cadastrados no passwd.
#
# Exemplos:
#   $ ./extrair_usuarios.sh
#   _douglas
#   _alavarse
#   _userx
#
# Histórico:
#
#   v1.0 2023-06-04, Douglas Alavarse:
#       - Versão inicial procurando no /etc/passwd,
#       adicionado -s, -h e -v. 
#
#
# Testado em:
#   zsh 5.9 (x86_64-apple-darwin22.0)


USERS="$(cat /etc/passwd | cut -f1 -d":")"

MESSAGE="
    $(basename $0) - [OPTIONS]

    -h - Help menu
    -v - Program Version
    -s - Sort Output
"

VERSION="v1.3"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0

while test -n "$1"
do
    case "$1" in
        -h) echo "$MESSAGE" && exit 0                                                 ;;
        -v) echo "$VERSION" && exit 0                                                 ;;
        -s) CHAVE_ORDENA=1                                                            ;;
        -m) CHAVE_MAIUSCULO=1                                                         ;;
        *) echo "Opção inválida, encontre as possibilidades utilizando -h." && exit 1 ;;
    esac 
    shift 
done

[ $CHAVE_ORDENA -eq 1 ]    && USERS=$(echo "$USERS" | sort)
[ $CHAVE_MAIUSCULO -eq 1 ] && USERS=$(echo "$USERS" | tr a-z A-Z)

echo "$USERS"
