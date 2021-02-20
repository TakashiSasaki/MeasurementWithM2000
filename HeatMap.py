import matplotlib.pyplot as plt
from Statuses import Statuses
from GpxPoints import GpxPoints
import folium
import folium.plugins

class HeatMap():
    def __init__(self, globForStatuses, globForGpxPoints, minLat, maxLat, minLon, maxLon) -> None:
        self.statuses = Statuses()
        self.statuses.readFiles(globForStatuses)
        self.gpxPoints = GpxPoints()
        self.gpxPoints.readFiles(globForGpxPoints)
        self.gpxPoints.crop(minLat, maxLat, minLon, maxLon)
        pass

    def plot(self):
        pass

if __name__ == "__main__":
    statuses = Statuses()
    #statuses.readFiles("status/*.*")
    print(len(statuses))
    gpxPoints = GpxPoints()
    #gpxPoints.readFiles("gpx/*.gpx")
    maxLat = 33.85267376174127
    minLon = 132.76945182276026
    minLat = 33.84739214519674
    maxLon = 132.77565640743407
    gpxPoints.crop(minLat, maxLat, minLon, maxLon)
    print(len(gpxPoints))
    map = folium.Map(location=[(minLat+maxLat)/2.0, (minLon +maxLon)/2.0],zoom_start=17, 
    min_lat = minLat, max_lat=maxLat, min_lon=minLon, max_lon=maxLon)
    map.save("heatmap.html")