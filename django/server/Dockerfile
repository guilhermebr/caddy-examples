FROM python:3.5
ENV PYTHONUNBUFFERED 1
RUN mkdir /app/
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install uwsgi gunicorn
ADD requirements.txt /app/
RUN pip install -r requirements.txt

RUN django-admin.py startproject mysite /app/ 

RUN echo "STATIC_ROOT = os.path.join(BASE_DIR, 'static/')" >> /app/mysite/settings.py
RUN python manage.py collectstatic --no-input

VOLUME /app/static

EXPOSE 8000

