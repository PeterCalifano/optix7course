import sys
import os

file_dir = sys.argv[1] # Get argument from command line call (VSCode task)

# Remove the 'gtsam' part of the path
#print('Adjusting relative path: ', file_dir)
path_split = file_dir.split('/')
adjusted_path = os.path.join(*path_split[1:])

# Output the adjusted path
print(adjusted_path)
