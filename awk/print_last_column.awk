BEGIN{
}
{
  # print last column
  print $NF
  # print last column but one
  print $(NF-1)
}
END{
}
