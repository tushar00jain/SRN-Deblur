import os
import glob

from pathlib import Path

input_frames = sorted(glob.glob("/data/SOTIS/Stabilized/EurasianCitiesBase-Part1/NFrames50/NLTV-LK/**/**/*.png"))

result = ""

for input_frame in input_frames:
    path = Path(input_frame)
    absolute = path.parent.absolute().parent.absolute()
    image = os.path.basename(str(absolute))
    gt = os.path.join("/data/SOTIS/Groundtruth/EurasianCitiesGT", image + ".png")
    result += gt + " " + input_frame + "\n"

f = open("datalist_sotis.txt", "a")
f.write(result)
f.close()
