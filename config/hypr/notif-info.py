import subprocess
import psutil
import math
from datetime import datetime
memory = psutil.virtual_memory()
cpu = 4

def get_cpu_temp():
    with open("/sys/class/thermal/thermal_zone0/temp", "r") as file:
        temp = float(file.read()) / 1000.0 
        return str(temp)
print(get_cpu_temp())

lines = [
"󰍛 "+str(math.floor(memory.used/1048576))+"M",
" "+get_cpu_temp()+"°",
"󰅐 "+datetime.now().strftime("%H:%M, %m/%d"),
]

singleLine = ""
for i in lines:
    singleLine += str(i) + '\n'

subprocess.run(["notify-send", singleLine[:-1]])
