FILE=$1
if [[ $FILE != "raw"  ]]; then
    echo "Available datasets are:raw "
    exit 1
fi
if [[ $FILE == "cityscapes" ]]; then
    echo "Due to license issue, we cannot provide the Cityscapes dataset from our repository. Please download the Cityscapes dataset from https://cityscapes-dataset.com, and use the script ./datasets/prepare_cityscapes_dataset.py."
    echo "You need to download gtFine_trainvaltest.zip and leftImg8bit_trainvaltest.zip. For further instruction, please read ./datasets/prepare_cityscapes_dataset.py"
    exit 1
fi
echo "Specified [$FILE]"
URL=https://syncandshare.lrz.de/dl/fiA6KKF6AAzux7Pw2ANnBnLf/$FILE.zip
ZIP_FILE=./data/vessel_data/$FILE.zip
TARGET_DIR=./data/vessel_data/$FILE/
wget -N $URL -O $ZIP_FILE
mkdir $TARGET_DIR
unzip $ZIP_FILE -d ./data/vessel_data/
rm $ZIP_FILE

