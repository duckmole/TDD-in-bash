test(){
    echo "test"
}
game(){
    local roll=$1
    local score=0
    local frame_index=0
    for loop in ${roll}
    do
        array=("${array[@]}" "${loop}")
    done
    for frame in $(seq 0 9)
    do
        score=$((score+array[frame_index]+array[frame_index+1]))
        frame_index=$((frame_index+2))
    done
    echo ${score}
}
