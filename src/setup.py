from setuptools import setup

setup(
   name='starter',
   version='1.0.0',
   description='starter shows how to use setup.py',
   author='Aypahyo',
   author_email='Aypahyo@github.com',
   url='https://github.com/Aypahyo/python-starter',
   packages=['starter_core'],
   py_modules=['starter'],
   entry_points={
    'console_scripts' : [
      'starter = starter:main'
    ],
   }
)


















