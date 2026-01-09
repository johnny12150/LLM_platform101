cd ~/Downloads/

# Install HF-cli
curl -LsSf https://hf.co/cli/install.sh | bash

## Download model
#~/.local/bin/hf download deepseek-ai/deepseek-llm-7b-base
#
#tar -czf deepseek-llm-7b.tar.gz \
#    -C ~/.cache/huggingface/hub \
#    models--deepseek-ai--deepseek-llm-7b-base

# Download smaller model
~/.local/bin/hf download deepseek-ai/DeepSeek-R1-Distill-Qwen-1.5B

tar -czf deepseek-r1-distill-qwen-1b.tar.gz \
    -C ~/.cache/huggingface/hub \
    models--deepseek-ai--DeepSeek-R1-Distill-Qwen-1.5B
