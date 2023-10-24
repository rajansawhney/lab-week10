CC = gcc

add_distances: add_distances.c
	gcc add_distances.c -o add_distances -lm

student_info: student_info.c
	gcc student_info.c -o student_info -lm

clean:
	rm add_distances student_info

test: add_distances student_info
	bash test.sh