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
  max = 0;
  max_index = 0;
  for (i = 0; i < length(elves); i++) {
    print i ": " elves[i];
    if (elves[i] > max) {
      max = elves[i];
      max_index = i;
    }
  }
  print "max index " max_index " with " max " calories"
}
