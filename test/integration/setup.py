from setuptools import setup

setup(
    name='gadgetron_integration_tests',
    version='0.0.5',
    url='https://github.com/gadgetron/gadgetron/tree/master/test/integration',
    author='Gadgetron',
    py_modules=['get_data', 'mem_watch', 'run_gadgetron_test', 'run_tests', 'stats_to_junit'],
    install_requires=['h5py','ismrmrd'],
    entry_points = {
        "console_scripts": ['gadgetron_get_integration_test_data = get_data:main', 
                            'gadgetron_run_integration_tests = run_tests:main',
                            'gadgetron_run_integration_test = run_gadgetron_test:main']
    },
)
