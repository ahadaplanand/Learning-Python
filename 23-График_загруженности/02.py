import psutil

vir_memory = psutil.virtual_memory() # obj
print(vir_memory[2])
print(psutil.cpu_percent(interval=0.2, percpu=False))