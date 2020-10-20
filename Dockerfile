# kéo hình ảnh cơ sở
FROM python:3.7

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


# set work directory

WORKDIR /django_vincent3

# Install dependencies
COPY Pipfile Pipfile.lock /django_vincent3/
RUN pip install pipenv && pipenv install --system


# Copy project
COPY . /django_vincent3/