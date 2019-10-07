
REM Data
set DATA_ROOT=../data/doupo

REM Model
set DIV_VAL=1
set N_LAYER=16
set D_MODEL=410
set D_EMBED=410
set N_HEAD=10
set D_HEAD=41
set D_INNER=2100

REM Training
set TGT_LEN=100
set MEM_LEN=100


set BSZ=64
set NUM_CORE=4

REM Testing
REM TEST_TGT_LEN=64
REM TEST_MEM_LEN=640
REM TEST_CLAMP_LEN=400

set TEST_TGT_LEN=100
set TEST_MEM_LEN=500
set TEST_CLAMP_LEN=400

REM TEST_BSZ=10
set TEST_BSZ=1

set TEST_NUM_CORE=1


if  %1==train_data ( python data_utils_chinese.py   --data_dir=%DATA_ROOT%/  --dataset=doupo  --tgt_len=%TGT_LEN%  --per_host_train_bsz=%BSZ%  --per_host_valid_bsz=%BSZ%	--num_passes=1  --use_tpu=false )
if  %1==train (
    echo 'Run training...'
    set CUDA_VISIBLE_DEVICES='0' 
	python train_gpu.py    --data_dir=%DATA_ROOT%/tfrecords   --record_info_dir=%DATA_ROOT%/tfrecords/   --corpus_info_path=%DATA_ROOT%/corpus-info.json   --model_dir=EXP-doupo4-1_head-1e4   --div_val=%DIV_VAL%   --untie_r=True    --proj_share_all_but_first=True    --n_layer=%N_LAYER%    --d_model=%D_MODEL%    --d_embed=%D_EMBED%   --n_head=%N_HEAD%   --d_head=%D_HEAD%   --d_inner=%D_INNER%   --dropout=0.1   --dropatt=0.0   --learning_rate=0.00010   --warmup_steps=0   --train_steps=1000000   --tgt_len=%TGT_LEN%   --mem_len=%MEM_LEN%    --train_batch_size=%BSZ%   --num_core_per_host=%NUM_CORE%  --iterations=200  --save_steps=4000  )


