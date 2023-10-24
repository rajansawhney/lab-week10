echo "Running tests..."
echo

echo "*****"
echo
echo "Add two distances..."
output_add_distances=$(./add_distances <test/input_add_distances)
echo $output_add_distances
expected_output_add_distances="58\' 1.4\""

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_add_distances == *$expected_output_add_distances* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_add_distances' but got: $output_add_distances"
  exit 1
fi

echo
echo "*****"
echo
echo "Student information..."

output_student_info=$(./student_info <test/input_student_info)
echo $output_student_info
expected_output_student_info1="Roll number: 1
Name: Tom
Marks: 98.00"

expected_output_student_info5="Roll number: 5
Name: Spike
Marks: 40.75"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_student_info == *$expected_output_student_info1* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_student_info1' but got: $output_student_info"
  exit 1
fi

if [[ $output_student_info == *$expected_output_student_info5* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_student_info5' but got: $output_student_info"
  exit 1
fi


echo
echo "*****"
echo
echo "All tests passed."

exit 0
