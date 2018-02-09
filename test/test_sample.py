# -*- coding: utf-8 -*-
""" This is a sample test in python
""" 

import unittest

class TestSampleObject(unittest.TestCase):
    
    def test_sample(self):
        toto = 6
        self.assertEqual(6, toto)