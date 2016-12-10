import os

from tf_seq2seq_chatbot.configs.config import SAVE_DATA_DIR

BASE=os.path.realpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), '../'))
TARGET=os.path.join(BASE, SAVE_DATA_DIR, 'data/chat.in')

with open(TARGET) as f:
    for line in f:
        print(line.strip())