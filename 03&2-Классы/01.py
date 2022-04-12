class ExQuote:
    def __init__(self, quote):
        self.quote = quote

    def say(self):
        return self.quote + '!'

class QQuote:
    def __init__(self, quote):
        self.quote = quote

    def say(self):
        return self.quote + '?'

a = ExQuote('Wnjldn wjlndjln wdf')
b = QQuote('nldnf dfggfdg  dfgdfd dfgdg')
print(a.say())
print(b.say())