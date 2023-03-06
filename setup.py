from setuptools import setup

setup(
    name="hello_chat_gpt",
    version="1.0.0",
    description="A program with a command line way to chat with ChatGPT",
    author="JerryFnas",
    author_email="https://github.com/jerryfans",
    url="https://github.com/jerryfans/hello_chat_gpt",
    py_modules=['hello_chat_gpt'],
    install_requires=[
        'requests',
    ],
    entry_points={
        'console_scripts': [
            'hello_chat_gpt=hello_chat_gpt:main',
        ],
    },
)
