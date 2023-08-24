FROM python:3	
				#we added Python version 3 in Ubunth OS
RUN  pip install django  	#if commands that shuold be run  [run command]

COPY . .			
				#copy all code from source to Container [. = source, . = destination]

RUN python manage.py migrate
				#if there some command that does not output anything are written inside RUN 
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
				#CMD it outputs something so and it contains array of words of the command //python manage.py runserver 0.0.0.0:8000
  	
