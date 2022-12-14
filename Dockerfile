FROM ubuntu:18.04

#ENV SECRET_KEY='_eb*!x78vr!@tzgicr56wp5oikbo=hh7cty5+4v9x17vhilp(6'
ENV SECRET_KEY='passw3d*'

WORKDIR /code

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

COPY requirements.txt /code

COPY . /code

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
