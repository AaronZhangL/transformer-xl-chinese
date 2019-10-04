# forked from GaoPeng97/transformer-xl-chinese
### Oct 3, 2019
----------------------

Oct 4, 2019
#### Update tensorflow version to 1.14.
#### Fixed some path issue.
----------------------
``` 
$ pyenv --version                                                                                                               pyenv 1.2.13
$ python --version
  Python 3.7.4
$ pyenv versions
  system
* anac3-5.3.1 (set by /Users/xxx/transformer-xl-chinese/.python-version)
  anaconda3-5.3.1
  anaconda3-5.3.1/envs/anac3-5.3.1
# tensorflow version:
1.14.0
```
----------------------
```
$ pip freeze > requirements.txt

$ pip install -r requirements.txt
```
----------------------
### How to run
```
$ export TF_XLA_FLAGS=--tf_xla_cpu_global_jit
$ bash scripts/doupo_base_gpu.sh train_data
$ bash scripts/doupo_base_gpu.sh train
$ bash scripts/doupo_base_gpu.sh inference
```

