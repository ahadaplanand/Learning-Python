# import netifaces

# def func():    
#     if_list = netifaces.interfaces()
#     print(' '.join([str(i) + ': ' + iface for i, iface in zip(range(len(if_list)), if_list)]))
#     if_num = int(input('Выберите интерфейс (они пронумерованы цифрами, начиная с 0): '))
#     ipv4 = netifaces.ifaddresses(if_list[if_num])[netifaces.AF_INET]
#     mac = netifaces.ifaddresses(if_num)[netifaces.AF_LINK]
#     args = [ipv4['addr'], ipv4['netmask'], mac['addr']]
#     print(f'Адресс: {args[0]} Маска: {args[1]}\nMAC-адресс: {args[2]}')

# func()