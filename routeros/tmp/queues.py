import auxlib

# --------------------------------------------------------------------------------

class Queue(object):
    
    class speed(object):
        def __init__(self, value):
            self.up   = int(value.split('/')[0])
            self.down = int(value.split('/')[1])
        
        def __repr__(self):
            return "%d/%d" % (self.up, self.down)
        
        def __div__(self, other):
            return "%d/%d" % (self.up/other, self.down/other)
        
        def __mul__(self, other):
            return "%d/%d" % (self.up*other, self.down*other)

    
    def __init__(self, name=''):
        self.name = name
        self._limAt  = self.speed('0/0')
        self._maxLim = self.speed('0/0')
        self._burLim = self.speed('0/0')
        self._burThr = self.speed('0/0')

    def __repr__(self):
        return "Name: %s LimAt: %s MaxLim: %s BurstLim: %s Thr: %s" % (self.name, self.limitAt, self.maxLimit, self.burstLimit, self.burstThreshold)

    def __eq__(self, other):
        return (self.name==other.name)
    
    def getLimAt(self): return self._limAt
    def setLimAt(self, value): self._limAt = self.speed(value)
    def getMaxLim(self): return self._maxLim
    def setMaxLim(self, value): self._maxLim = self.speed(value)
    def getBurLim(self): return self._burLim
    def setBurLim(self, value): self._burLim = self.speed(value)
    def getBurThr(self): return self._burThr
    def setBurThr(self, value): self._burThr = self.speed(value)
        
    limitAt = property(getLimAt, setLimAt)
    maxLimit = property(getMaxLim, setMaxLim)
    burstLimit = property(getBurLim, setBurLim)
    burstThreshold = property(getBurThr, setBurThr)

# --------------------------------------------------------------------------------

class Queues(object):
    r1 = re.compile(r'[0-9]*\s+name=\"(.+?)\"')
    r2 = re.compile(r'limit-at=(.+?) ')
    r3 = re.compile(r'max-limit=(.+?) ')
    r4 = re.compile(r'burst-limit=(.+?) ')
    r5 = re.compile(r'burst-threshold=(.+?) ')
    
    def __init__(self, mikrotik):
        self.mikrotik = mikrotik


    def get(self):
        self.it = auxlib.getSSHLines(mikrotik, "/queue simple print")
        
        for line in self.it:
            match = Queues.r1.search(line)
            if not match: continue
                
            queue = Queue()
            queue.name = match.group(1)

            for line in self.it:
                if not line: break
                match = Queues.r2.search(line)
                if match: queue.limitAt = match.group(1)
                match = Queues.r3.search(line)
                if match: queue.maxLimit = match.group(1)
                match = Queues.r4.search(line)
                if match: queue.burstLimit = match.group(1)
                match = Queues.r5.search(line)
                if match: queue.burstThreshold = match.group(1)    
                
            yield queue

