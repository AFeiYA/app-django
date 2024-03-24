from ..cacl import add
from django.test import SimpleTestCase

class CaclTestCase(SimpleTestCase):
    def test_add(self):
        res = add(5,3)
        self.assertEqual(res,8)