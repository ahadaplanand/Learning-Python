import sqlite3, random, time

connection = sqlite3.connect(database = \
    '/home/sirius/Study/Learning-Python/14@-Викторина/quiz_db')
cursor = connection.cursor()


def question(level, count):
    cursor.execute(f'''SELECT COUNT(*) FROM {level}''')
    var = cursor.fetchone()[0]
    random_id = random.randint(1, var)
    cursor.execute(f'''SELECT * FROM {level} WHERE id = {random_id}''')
    var = cursor.fetchone()

    print('Вопрос ' + count + ':')
    print(var[1])
    print('1) ' + var[2] + '\n2) ' + var[3] + '\n3) ' + var[4] + '\n4) ' + var[5])

    ans = str(input('Ответ введите цифрой (1/2/3/4), для выхода (q): '))

    time.sleep(0.7)
    
    if ans == var[6]:
        print('\nАбсолютно верно!')
        return True
    elif ans == 'q':
        print('\nИгра завершается')
        return 'quit'
    else:
        print('\nНеверно(')
        return False


def level(lvl, cou, win_text, lose_text):
    game = question(lvl, cou)
    time.sleep(0.5)
    
    if game:
        print(win_text)
        return True
    elif game == 'qiut':
        return False
    else:
        print(lose_text)
        return False


def main(greeting, levels1, levels2, win_text, lose_text):
    print(greeting[0]); time.sleep(0.7)
    print(greeting[1]); time.sleep(0.7)
    print(greeting[2]); time.sleep(0.7)

    for i in range(0, 5):        
        if level(levels1[i], levels2[i], win_text[i], lose_text[i]):
            time.sleep(1.2)
            continue
        else:
            break
        

greeting = ['\n\nДобро пожаловать в викторину!',
    'Постарайтесь выиграть, вас ожидает невероятный приз!!!',
    'И мы начинаем!\n']
levels1 = ['level1', 'level2', 'level3', 'level4', 'level5']
levels2 = ['первый', 'второй', 'третий', 'четвертый', 'пятый и последний']
lose_text = ['Плохо, очень плохо, вы ответили на 0 вопросов. Игра окончена',
    'Может быть, в слудующий раз... Пока 1 верный ответ. Игра окончена',
    'Вы достигли двух правильных ответов. Игра окончена',
    'У вас было три верных ответа. Игра окончена',
    'Всего один ответ отделил вас от успеха в жизни... Игра окончена']
win_text = ['Вы ответили на первый вопрос! Продолжаем!!\n',
    'И снова верно! Так держать!\n',
    'Уже три верных ответа! Идем дальше!\n',
    'Четыре! Нужен еще один!!\n',
    '''Пять из пяти! Получайте наш подарок!!!!\n
    ⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
    ⠄⢰⡶⠶⠶⢶⡆⠄⠄⣄⠄⠄⠒⠄⠄⠄⠄⠄⣤⠄⠄⣠⠄⢰⡶⠶⠶⢶⡆⠄
    ⠄⢸⡇⣿⡿⢸⡇⠄⣿⠘⢣⡄⠄⠄⠠⠄⣤⠛⠈⢳⡄⠄⠄⢸⡇⢺⣿⢸⡇⠄
    ⠄⠸⠷⠶⠶⠾⠇⣶⠉⠄⠈⠱⠶⠶⠶⠶⠏⠄⠄⠈⢱⡆⠄⠸⠷⠶⠶⠾⠇⠄
    ⠄⢠⡞⣤⠄⠄⠄⣿⠄⢠⡄⠄⠄⠄⠄⠄⣠⠄⠄⠄⢸⡇⠄⠄⢠⡄⠄⠄⠄⠄
    ⠄⠄⠙⠄⠄⠳⢄⣿⡦⠘⠛⠛⠄⠄⠘⠛⠛⠄⠠⠄⢸⣇⠴⠛⠃⠄⠤⣻⠄⠄
    ⠄⠰⠆⠄⢀⡰⠎⣿⠄⠄⢀⡀⣀⢶⡀⢀⡶⠶⠄⠄⢸⡏⠶⡀⠄⠄⠄⠉⠄⠄
    ⠄⠄⠄⠄⣤⠁⠄⠈⠛⣄⠈⠙⠉⠄⠙⠋⠄⠄⠄⡼⠋⣤⠄⠁⢠⡞⣤⠄⠄⠄
    ⠄⠄⠄⠛⠼⠃⠄⣤⠛⠄⢀⣀⠄⠄⢀⣀⡀⠄⠄⠘⠛⠧⢤⡀⠄⠙⠄⠠⠄⠄
    ⠄⠄⣀⠄⠄⠰⠆⣿⠄⠄⢸⡏⠶⣰⠎⢹⡇⠄⠄⠄⠄⠄⠄⢱⡆⣀⠶⢶⡆⠄
    ⠄⠘⢧⠛⠄⠄⠄⣿⠄⠄⠄⠙⣤⢀⡜⠃⠄⠄⠄⠄⠄⠄⠄⢸⣧⡟⣤⠛⠃⠄
    ⠄⠄⢀⠄⠠⢞⣳⣿⠄⠄⠄⠄⠄⠛⠄⠄⠄⠄⠄⠄⠄⠄⠄⢸⣿⡇⣿⠄⡀⠄
    ⠄⢀⣉⣀⣀⣈⡁⠉⠶⣀⠄⢀⠄⢀⡀⠄⣶⠄⠄⠄⢀⡀⠄⢸⡏⣁⠿⠈⠁⠄
    ⠄⢸⡇⣤⣤⢸⡇⠄⠄⣿⠄⢸⣤⣼⡇⠄⣿⠄⢀⣤⣼⠇⠄⢸⣧⡟⠄⠄⠄⠄
    ⠄⢸⣇⣛⣋⣸⡇⠄⠄⣿⣀⣸⠄⢸⣇⣀⣿⡶⢾⣇⣀⣀⣀⣸⡇⠄⠴⣻⠆⠄
    ⠄⠈⠉⠉⠉⠉⠁⠄⠄⠉⠉⠉⠄⠈⠉⠉⠉⠄⠈⠉⠉⠉⠉⠉⠁⠄⠄⠉⠄⠄
    ⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
    ⠄⢸⡟⠛⠛⣿⢸⡟⠛⠛⡇⠄⠄⠄⢸⡇⢠⡿⠄⣴⡟⠛⢻⣦⠘⠛⣿⠛⠋⠄
    ⠄⢸⡇⠄⠄⣿⢸⡷⠶⠾⡁⠰⠶⠶⢸⡷⢿⣅⠄⣿⠄⠄⠄⣿⠄⠄⣿⠄⠄⠄
    ⠄⢸⣧⣤⣤⡿⢸⡇⠄⠄⡇⠄⠄⠄⢸⡇⠈⣿⡄⠻⣷⣤⡾⠏⠄⠄⣿⠄⠄⠄
    ⠄⠄⠄⠄⠉⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄''']



main(greeting, levels1, levels2, win_text, lose_text)