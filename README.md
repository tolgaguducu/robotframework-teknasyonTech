
# Test Automation

This is an example test automation project in Robot Framework.

## venv build (Run the following commands in order to create venv)
```bash
>  python3 -m venv venv
>  source venv/bin/activate
```

## Install dependencies

```bash
  pip3 install -r sources/requirements.txt
```

## Running Tests

Run any tests
```bash
>  robot -d report tests/features/featureTests.robot
>  robot -d report -i @inputTest tests/*/*.robot
```

Run 5 tests parallel
```bash
>  pabot --processes 5 -d report tests/routines/*.robot
```

## Tech Stack

**Programming Language:** Python

**Framework:** Robotframework

**IDE:** PyCharm CE

## 🚀 About Me
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/tolgaguducu/)