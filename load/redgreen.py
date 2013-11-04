import os
import pandas as pd
from wheelerdata.load.base import Wheelerdata


class Redgreen(Wheelerdata):
    """Redgreen data"""

    def __init__(self):
        super(Redgreen, self).__init__()
        
        self.scodes = [1, 2, 5, 7, 8, 9, 10, 11, 12, 14, 15, 
                16, 17, 18, 19, 22, 24, 25]
        self.name = "redgreen"
        
        self.datapath = "/data/data2/meta_accumulate/" + self.name
        self.roipath = os.path.join(self.datapath, "roinii")
        self.metapath = os.path.join(self.datapath, "fidl")

