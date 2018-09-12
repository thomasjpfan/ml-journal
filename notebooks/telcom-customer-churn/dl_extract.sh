#!/usr/bin/env sh

ZIPED_FILE="data/telco-customer-churn.zip"

if [ ! -f "${ZIPED_FILE}" ]; then
	kaggle datasets download -d blastchar/telco-customer-churn -p data
else
	printf "${ZIPED_FILE} already exists\n"
fi

if [ ! -f "data/WA_Fn-UseC_-Telco-Customer-Churn.csv" ]; then
	printf "Unzipping \n"
	unzip ${ZIPED_FILE} -d data
else
	printf "${ZIPED_FILE} already unzipped\n"
fi
