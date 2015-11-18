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
