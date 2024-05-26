import os
from random import choice
from datetime import datetime, timedelta

# List of sample commit messages
commit_messages = [
    "Fixed bug in user authentication",
    "Added unit tests for user service",
    "Refactored servlet for better readability",
    "Updated documentation for API endpoints",
    "Optimized database queries",
    "Implemented new feature for file upload",
    "Removed deprecated code",
    "Improved error handling in controller",
    "Updated configuration for production environment",
    "Added logging for troubleshooting"
]

# Calculate the date for 4 days ago
four_days_ago = (datetime.now() - timedelta(days=4)).strftime('%Y-%m-%dT%H:%M:%S')

# Number of commits you want to create
num_commits = 10

# Create the commits
for _ in range(num_commits):
    message = choice(commit_messages)
    with open('file.txt', 'a') as file:
        file.write(f"Commit made on {four_days_ago} with message: {message}\n")
    os.system('git add .')
    os.system(f'set GIT_COMMITTER_DATE={four_days_ago} && git commit --date="{four_days_ago}" -m "{message}"')

