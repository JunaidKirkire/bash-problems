#!/bin/awk -f
{
  if (NR % 3)
    printf("%s ", $0) >"tmp.txt"
  else
    printf("%s\n", $0) >"tmp.txt"
}