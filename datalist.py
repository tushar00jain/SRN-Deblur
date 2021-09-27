import os
import glob

from pathlib import Path

input_frames = sorted(glob.glob("/data/SOTIS2/Stabilized/EurasianCitiesBase-Part1/NFrames50/NLTV-LK/**/**/*.png"))

result = ""

for input_frame in input_frames:
    path = Path(input_frame)
    absolute = path.parent.absolute().parent.absolute()
    image = os.path.basename(str(absolute))
    gt = os.path.join("/data/SOTIS2/Groundtruth/EurasianCitiesGT", image + ".png")
    result += gt + " " + input_frame + "\n"

f = open("datalist_sotis2.txt", "a")
f.write(result)
f.close()
