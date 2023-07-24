# MÉTODO I - Para inserir o debug no meio do código, podemos utilizar a seguinte estrutura:
#
# set -x
# [código]
# set +x
#
# MÉTODO II - Podemos executar outra maneira pelo terminal que seria: zsh/bash -x script.sh
#
# MÉTODO III - Abaixo vamos criar uma função de debug

#----------------------------Variáveis----------------------------#
CHAVE_DEBUG=0
NIVEL_DEBUG=0
#-----------------------------------------------------------------#
Debugar () {
    [ $1 -le $NIVEL_DEBUG ] && echo "Debug $* -----"

}

Soma () {
    local total=0

    for i in $(seq 1 25); do
        Debugar 1 "Entrei no for com o valor $i"
        total=$(($total+$i))
        Debugar 2 "Depois da soma: $total" 
    done;
}

case "$1" in
    -d) [ $2 ] && NIVEL_DEBUG=$2 ;;
     *) Soma                     ;;
esac  