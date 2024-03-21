from dataclasses import dataclass


@dataclass
class Point:
    x: float = 0
    y: float = 0
    z: float = 0
    
    def __str__(self):
        return f"({self.x}, {self.y}, {self.z})"