ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.."; pwd)"
source "${ROOT_DIR}/sources/bowling.sh"

first_test(){
    assertion__equal test "$(test)"
}
