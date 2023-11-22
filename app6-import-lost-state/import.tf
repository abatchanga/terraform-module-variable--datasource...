# We can also use the terraform import bloc to recover a lost state file 
# What will you do if you lose your state file? You import your resource

import {
  to = aws_iam_group.demo
  id = "security"
}
