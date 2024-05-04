

from django.test import SimpleTestCase
from app.cacl import add


class CaclTestCase(SimpleTestCase):
    def test_add(self):
        res = add(5,3)
        self.assertEqual(res,8)