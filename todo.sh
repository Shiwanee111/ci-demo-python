#!/bin/bash

TODO_FILE="todo.txt"

# Create file if not exists
touch "$TODO_FILE"

while true
do
  echo "======================"
  echo " SIMPLE TO-DO LIST "
  echo "======================"
  echo "1. Add Task"
  echo "2. View Tasks"
  echo "3. Remove Task"
  echo "4. Exit"
  echo "======================"

  read -p "Choose an option (1-4): " choice

  case $choice in
    1)
      read -p "Enter task: " task
      echo "$task" >> "$TODO_FILE"
      echo "Task added."
      ;;
    2)
      echo "---- Your Tasks ----"
      if [ ! -s "$TODO_FILE" ]; then
        echo "No tasks found."
      else
        nl "$TODO_FILE"
      fi
      ;;
    3)
      echo "---- Remove Task ----"
      nl "$TODO_FILE"
      read -p "Enter task number to remove: " task_no
      sed -i "${task_no}d" "$TODO_FILE"
      echo "Task removed."
      ;;
    4)
      echo "Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid option. Try again."
      ;;
  esac
done
