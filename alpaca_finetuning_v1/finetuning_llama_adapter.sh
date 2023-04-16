torchrun --nproc_per_node 8 finetuning.py \
    --model Llama7B_adapter \
    --llama_model_path '/data1/llma/' \
    --data_path '/data1/alpaca_data.json' \
    --adapter_layer 30 \
    --adapter_len 10 \
    --max_seq_len 512 \
    --batch_size 4 \
    --epochs 5 \
    --warmup_epochs 2 \
    --blr 9e-3 \
    --weight_decay 0.02 \
    --output_dir ./checkpoint/