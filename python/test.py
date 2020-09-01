import mfcc
import numpy as np

from scipy.io import wavfile

sr, audio = wavfile.read("/home/rdong/mono.wav")
print("audio:", audio, audio.shape, sr)
output = mfcc.mfcc(sr, audio)
print(output.shape, output)
