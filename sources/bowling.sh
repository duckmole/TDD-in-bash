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
        local score_frame=$((array[frame_index]+array[frame_index+1]))
        if isSpare $score_frame
        then
            score=$((score+score_frame+array[frame_index+2]))
        else
            score=$((score+score_frame))
        fi
        frame_index=$((frame_index+2))
    done
    echo ${score}
}
isSpare(){
    [ $1 -eq 10 ]
}
