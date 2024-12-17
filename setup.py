from setuptools import setup, find_packages
from pathlib import Path

directory = Path(__file__).resolve().parent
with open(directory / "README.md", encoding="utf-8") as f:
    long_description = f.read()

setup(
    name="dotfiles",
    version="1.0.0",
    author="Valentin Lafage",
    license="MIT",
    long_description=long_description,
    long_description_content_type="text/markdown",
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
    ],
    packages=find_packages(),
    install_requires=[],
    extras_require={
        "linting": [
            "black",
            "flake8",
            "pre-commit",
        ],
    },
    python_requires=">=3.9",
)
