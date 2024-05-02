#no makefile você cria apelidos para comandos extensos, basta usar "make + apelido" criado

run:
		@uvicorn workout_api.main:app --reload

create-migrations:
		@PYTHONPATH=$PYTHONPATH:$(pwd) alembic revision --autogenerate -m $(d)

run-migrations:
		@PYTHONPATH=$PYTHONPATH:$(pwd) alembic upgrade head