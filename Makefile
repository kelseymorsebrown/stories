setup:
	sh ./bin/setup_project.sh

test-fe:
	cd frontend; \
	sh scripts/test.sh; \
	cd ..;

test-be:
	cd backend; \
	sh scripts/test.sh; \
	cd ..;