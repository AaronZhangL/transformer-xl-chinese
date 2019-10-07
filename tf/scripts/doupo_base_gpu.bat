
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
else  ( echo "=======false===========" )

