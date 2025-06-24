###
import gdown
import zipfile
import os
# Download the file using gdown
url = "https://drive.google.com/file/d/1HTeDZUVrZr6nL56ZlkYBNqjSWh3IGV2X/view?usp=sharing"
output = "RSTPReid.zip"
gdown.download(url, output, fuzzy=True)

# Unzip the file
with zipfile.ZipFile(output, 'r') as zip_ref:
    zip_ref.extractall("RSTPReid")

# Remove the zip file
os.remove(output)

print("Dataset downloaded and extracted successfully!")
