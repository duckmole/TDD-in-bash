ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.."; pwd)"
source "${ROOT_DIR}/sources/bowling.sh"

first_test(){
    assertion__equal test "$(test)"
}
no_pine_test(){
    local score=($(game "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"))
    assertion__equal "'0'" "'${score[@]}'"
}
one_pine_test(){
    local score=($(game "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"))
    assertion__equal "'20'" "'${score[@]}'"
}
spare_test(){
    local score=($(game "4 6 5 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"))
    assertion__equal "'37'" "'${score[@]}'"
}
strike_test(){
    local score=($(game "10 5 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"))
    assertion__equal "'38'" "'${score[@]}'"
}
