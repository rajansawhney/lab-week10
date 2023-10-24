echo "Running tests..."
echo

echo "*****"
echo
echo "Accessing array elements using pointers..."
output_array_w_pointers=$(./array_w_pointers <test/input_array_w_pointers)
echo $output_array_w_pointers
expected_output_array_w_pointers="2
3
5
8
13"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_array_w_pointers == *$expected_output_array_w_pointers* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_array_w_pointers' but got: $output_array_w_pointers"
  exit 1
fi

echo
echo "*****"
echo
echo "Cyclic swap..."

output_cyclic_swap=$(./cyclic_swap <test/input_cyclic_swap)
echo $output_cyclic_swap
expected_output_cyclic_swap="a=1
b=2
c=3"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_cyclic_swap == *$expected_output_cyclic_swap* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_cyclic_swap' but got: $output_cyclic_swap"
  exit 1
fi


echo
echo "*****"
echo
echo "All tests passed."

exit 0
