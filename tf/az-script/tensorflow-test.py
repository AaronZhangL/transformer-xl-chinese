import tensorflow as tf
import numpy as np
import sys

print("##tensorflow version:")
print(tf.__version__)

print("##Python version:")
print(sys.version)

c = np.array([[3., 4], [5., 6], [6., 7]])
step = tf.reduce_mean(c, 1)
with tf.compat.v1.Session() as sess:
    print(sess.run(step))
