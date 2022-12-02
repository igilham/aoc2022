BEGIN {
 current = 0;
}

{
  if(length($1) > 0) {
    elves[current] += $1
  } else {
    current++;
  }
}

END {
  first = 0;
  first_index = 0;
  second = 0;
  second_index = 0;
  third = 0;
  third_index = 0;
  for (i = 0; i < length(elves); i++) {
    print i ": " elves[i];
    if (elves[i] > first) {
      third = second
      third_index = second_index

      second = first
      second_index = first_index

      first = elves[i];
      first_index = i;
    } else if (elves[i] > second) {
      third = second
      third_index = second_index

      second = elves[i]
      second_index = i
    } else if (elves[i] > third) {
      third = elves[i]
      third_index = i
    }
  }
  print "first index " first_index " with " first " calories"
  print "second index " second_index " with " second " calories"
  print "third index " third_index " with " third " calories"
  print "sum of top 3: " first + second + third " calories"
}
