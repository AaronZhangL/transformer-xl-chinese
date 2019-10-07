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
$ pip install progressbar
$ pip install matplotlib
```
----------------------
### Export packages
```
$ pip freeze > requirements.txt
```
### Install packages
```
$ pip install -r requirements.txt
```
----------------------
### How to run
```
$ export AUTOGRAPH_VERBOSITY=10
$ export TF_XLA_FLAGS=--tf_xla_cpu_global_jit
$ bash scripts/doupo_base_gpu.sh train_data
$ bash scripts/doupo_base_gpu.sh train
$ bash scripts/doupo_base_gpu.sh inference
```
#### for windows
```
set AUTOGRAPH_VERBOSITY=10
set TF_XLA_FLAGS=--tf_xla_cpu_global_jit
set CUDA_VISIBLE_DEVICES=0
```
### Test tensorflow
```
$ python
Python 3.7.3 (default, Apr 24 2019, 15:29:51) [MSC v.1915 64 bit (AMD64)] :: Anaconda, Inc. on win32
Type "help", "copyright", "credits" or "license" for more information.
>>>
>>>
>>> import tensorflow as tf
>>> tf.test.is_built_with_cuda()
True
>>>
>>> tf.test.is_gpu_available(cuda_only=False, min_cuda_compute_capability=None)
2019-10-08 00:40:51.471873: I tensorflow/core/platform/cpu_feature_guard.cc:142] Your CPU supports instructions that this TensorFlow binary was not compiled to use: AVX2
2019-10-08 00:40:51.481176: I tensorflow/stream_executor/platform/default/dso_loader.cc:42] Successfully opened dynamic library nvcuda.dll
2019-10-08 00:40:51.821642: E tensorflow/stream_executor/cuda/cuda_driver.cc:318] failed call to cuInit: CUDA_ERROR_NO_DEVICE: no CUDA-capable device is detected
2019-10-08 00:40:51.834933: I tensorflow/stream_executor/cuda/cuda_diagnostics.cc:169] retrieving CUDA diagnostic information for host: ALIENWARE-ZHANG
2019-10-08 00:40:51.841162: I tensorflow/stream_executor/cuda/cuda_diagnostics.cc:176] hostname: ALIENWARE-ZHANG
False
```


