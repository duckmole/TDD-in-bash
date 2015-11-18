test(){
    echo "test"
}
game(){
    local roll=$1
    local score=0
    for loop in ${roll}
    do
        score=$((${score}+${loop}))
    done
    echo ${score}
}
