import cv2
import numpy as np
import tensorflow as tf
from keras.preprocessing import image

model = tf.keras.models.load_model('model_SmartBin.h5')

def ToClass(image):
  if image.shape[-1] > 1:
    return image.argmax(axis=-1)
  else:
    return (image > 0.5).astype('int32')
def ResultClass(R):
  if(ToClass(R)==0):
    print("can't recycles")
  else:
    print("recycles")

test_image = image.load_img("data/test4.jpg", target_size = (224, 224))
test_image = image.img_to_array(test_image)
test_image = np.expand_dims(test_image, axis = 0)

result = model.predict(test_image)

ResultClass(result)
