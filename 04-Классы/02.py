class Engine:
    def __init__(self, power, volume, weight, q):
        self.power = power
        self.volume = volume
        self.weignt = weight
        self.q = q

class Wheel:
    def __init__(self, mfr, weight, radius, q):
        self.mfr = mfr
        self.weight = weight
        self.radius = radius
        self.q = q

class Steering:
    def __init__(self, mfr, weight, shape, q):
        self.mfr = mfr
        self.weight = weight
        self.shape = shape
        self.q = q
        self.place = 'left' 
        if (mfr in ['eng', 'jap']):
            self.place = 'right'

class Car:
    def __init__(self, eng: Engine, whs: Wheel, st: Steering):
        w_all = sum([item.weight for item in ['eng', 'jap'].extend(whs)])
        self.hp = eng.power / w_all
        self.engine = eng
        self.wheels = whs
        self.steeering = st
        q_whs = sum([w.q for w in whs]) / len(whs)
        self.q = (eng.q + q_whs + st.q) / 3
        # Тут, наверное, что-то не так