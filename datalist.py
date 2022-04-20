import os
import glob

from pathlib import Path

input_frames = sorted(glob.glob("/data/SOTIS/Stabilized/EurasianCitiesBase/NFrames50/TV-TVL1/**/**/*.png"))

print(len(input_frames))
result = ""

for input_frame in input_frames:
    path = Path(input_frame)
    absolute = path.parent.absolute().parent.absolute()
    image = os.path.basename(str(absolute))
    gt = os.path.join("/data/SOTIS/Groundtruth/EurasianCitiesGT", image + ".png")
    result += gt + " " + input_frame + "\n"

f = open("datalist_sotis_tv_tvl1.txt", "w")
f.write(result)
f.close()