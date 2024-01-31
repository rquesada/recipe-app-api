"""
    Sample test    
"""

from django.test import SimpleTestCase
from app import calc

class CalcTest(SimpleTestCase):
    def test_add(self):
        res = calc.add(1, 2)
        self.assertEqual(res, 3)
        
    def test_subtract(self):
        res = calc.subtract(1, 2)
        self.assertEqual(res, -1)
