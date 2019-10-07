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
2019-10-08 01:00:15.968986: I tensorflow/core/platform/cpu_feature_guard.cc:142] Your CPU supports instructions that this TensorFlow binary was not compiled to use: AVX2
2019-10-08 01:00:15.977193: I tensorflow/stream_executor/platform/default/dso_loader.cc:42] Successfully opened dynamic library nvcuda.dll
2019-10-08 01:00:16.306120: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1640] Found device 0 with properties:
name: GeForce GTX 770M major: 3 minor: 0 memoryClockRate(GHz): 0.797
pciBusID: 0000:01:00.0
2019-10-08 01:00:16.313599: I tensorflow/stream_executor/platform/default/dlopen_checker_stub.cc:25] GPU libraries are statically linked, skip dlopen check.
2019-10-08 01:00:16.323019: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1717] Ignoring visible gpu device (device: 0, name: GeForce GTX 770M, pci bus id: 0000:01:00.0, compute capability: 3.0) with Cuda compute capability 3.0. The minimum required Cuda capability is 3.5.
2019-10-08 01:00:16.387441: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1181] Device interconnect StreamExecutor with strength 1 edge matrix:
2019-10-08 01:00:16.392837: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1187]      0
2019-10-08 01:00:16.397074: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1200] 0:   N
```


