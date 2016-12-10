#!/usr/bin/env bash

#PRIV='sudo'
PRIV=''

# create and own the directories to store results locally
save_dir='tf_seq2seq_chatbot_sol/'
$PRIV mkdir -p $save_dir'/data/'
$PRIV mkdir -p $save_dir'/nn_models/'
$PRIV mkdir -p $save_dir'/results/'
$PRIV chown -R "$USER" $save_dir

# copy train and test data with proper naming
data_dir='tf_seq2seq_chatbot/data/train'
cp $data_dir'/movie_lines_selected.txt' $save_dir'/data/chat.in'
cp $data_dir'/movie_lines_selected_10k.txt' $save_dir'/data/chat_test.in'