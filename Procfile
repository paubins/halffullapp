web: gunicorn halffull.wsgi --log-file -
release: python manage.py migrate
release: python manage.py collectstatic --noinput