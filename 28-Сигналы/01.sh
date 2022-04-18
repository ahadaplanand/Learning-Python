#!/bin/bash


# 1
# trap "echo 'Trapped Ctrl-C'" SIGINT

# count=1
# while [[ $count -le 10 ]]
# do
#     echo "msg #$count"
#     count=$(( $count + 1 ))
#     sleep 1
# done


# 2
# trap "echo 'Goodgye...'" EXIT

# count=1
# while [[ $count -le 10 ]]
# do
#     echo "msg #$count"
#     count=$(( $count + 1 ))
#     sleep 1
# done


# 3
# trap "echo 'Nothing can stop me now'" SIGINT
# count=1
# while [[ $count -le 5 ]]
# do
#     echo "msg #$count"
#     count=$(( $count + 1 ))
#     sleep 1
# done

# trap "echo 'I said NOTHING can stop me!!!'" SIGINT
# count=1
# while [[ $count -le 10 ]]
# do
#     echo "msg #$count"
#     count=$(( $count + 1 ))
#     sleep 1
# done

# trap -- SIGINT # убираем это дело