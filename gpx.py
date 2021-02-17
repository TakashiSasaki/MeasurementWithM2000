#import xml
#from xml.sax.handler import ContentHandler
import xml.etree.ElementTree
import glob
import os.path
import datetime
import numpy

class GpxElementTree():
    def __init__(self) -> None:
        #self.trkpts = []
        self.logs = []

    def readFiles(self, globPattern):
        filePaths = glob.glob(globPattern)
        for filePath in filePaths:
            self.readFile(filePath)

    def readFile(self, path):
        self.path = path
        self.dirname = os.path.dirname(path)
        self.basename = os.path.basename(path)
        self.elementTree = xml.etree.ElementTree.parse(path)
        self.root = self.elementTree.getroot()
        trkpts = self.root.findall(".//{*}trkpt")
        #print ("%d points read from %s" % (len(newTrkpts), self.path))
        #self.trkpts.extend(newTrkpts)
        for x in trkpts:
            isinstance(x, xml.etree.ElementTree.Element)
            #print(x)
            lat = float(x.attrib.get("lat"))
            lon = float(x.attrib.get("lon"))
            ele = float(x.find("{*}ele").text)
            time = datetime.datetime.fromisoformat(x.find("{*}time").text.replace("Z", "+00:00"))
            speed = float((lambda x : 0 if x is None else x.text)(x.find("{*}speed")))
            t = (lat, lon, ele, time, speed)
            #print(t)
            self.logs.append(t)
        
    def crop(self, minLat, maxLat, minLon, maxLon):
        assert(minLat <= maxLat and minLon <= maxLon)
        l = []
        for x in self.logs:
            if(x[0] < minLat): continue
            if(x[0] > maxLat): continue
            if(x[1] < minLon): continue
            if(x[1] > maxLon): continue
            l.append(x)
        self.logs = l

    def getDateTimes(self):
        return [ x[3] for x in self.logs]
    
    def getTimeDeltas(self, dt):
        return [ x - dt for x in self.getDateTimes()]

    def getLogByDateTime(self, dt, maxDiffSec = 60):
        array = numpy.asarray(self.getTimeDeltas(dt) )
        absarray = abs(array)
        index = absarray.argmin()
        #index = numpy.abs(numpy.asarray(gpxElementTree.getTimeDeltas(dt)).argmin())
        #print(index)
        candidate = self.logs[index]
        delta = candidate[3] - dt
        if abs(delta.total_seconds())>60:
            raise Exception("no log near %d seconds around %s" %  (maxDiffSec, dt))
        return candidate

if __name__ == "__main__":
    gpxElementTree = GpxElementTree()
    gpxElementTree.readFiles("gpx/*.gpx")

    maxLat = 33.85267376174127
    minLon = 132.76945182276026
    minLat = 33.84739214519674
    maxLon = 132.77565640743407
    gpxElementTree.crop(minLat, maxLat, minLon, maxLon)
    dt = datetime.datetime(2021, 2, 13, 7, 19, 10, 1, datetime.timezone.utc)
    print (gpxElementTree.getLogByDateTime(dt))
    print("diff = %d" % ((gpxElementTree.getLogByDateTime(dt)[3] - dt).total_seconds()))
