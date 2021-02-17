import os.path
import re
import datetime

class Statuses:
    __slots__ = ["statuses"]

    def __init__(self) -> None:
        self.statuses = []
        pass

    def readFiles(self, dirPath):
        filesPattern = os.path.join(dirPath + "/*.*")
        filePaths = glob.glob(filesPattern)
        #print(len(filePaths))
        for filePath in filePaths:
            f = open(filePath)
            s = f.read()
            s = s.replace("\n", " ")
            #print(len(s))
            m = re.search("Signal Strength:\s+.+\s+([-0-9]+) dBm.+SNR:\s+.+\s+([0-9]+) dB.+Band:\s.+\s([0-9]+)\s", s, re.MULTILINE)
            if m is None: continue
            if len(m.groups()) != 3: continue
            #print(m.groups())
            ss = m[1]
            snr = m[2]
            band = m[3]
            #print(ss, snr, band)
            basename = os.path.basename(filePath)
            stem = os.path.splitext(basename)[0]
            #dt = datetime.datetime.fromisoformat(stem+ "+09:00")
            m = re.match("([0-9][0-9][0-9][0-9])([0-9][0-9])([0-9][0-9])T([0-9][0-9])([0-9][0-9])([0-9][0-9])", basename)
            if len(m.groups()) != 6: continue
            #print(m.groups())
            YYYY = int(m[1])
            MM = int(m[2])
            DD = int(m[3])
            hh = int(m[4])
            mm = int(m[5])
            ss = int(m[6])
            JST = datetime.timezone(datetime.timedelta(hours=+9), 'JST')
            dt = datetime.datetime(YYYY,MM,DD,hh,mm,ss, 0, JST)
            #print(dt)
            status = (dt, ss, snr, band)
            self.statuses.append(status)

    def __len__(self):
        return len(self.statuses)

import glob
if __name__ == "__main__":
    statuses = Statuses()
    statuses.readFiles("status")
    print(len(statuses))