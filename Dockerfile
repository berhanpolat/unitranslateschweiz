FROM ubuntu:latest
FROM python:3
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN apt-get update && apt-get -y install poppler-utils && apt-get clean
RUN apt update && apt install -y libsm6 libxext6
RUN apt-get update && apt-get install -y tesseract-ocr
RUN apt-get -q -y install tesseract-ocr tesseract-ocr-eng tesseract-ocr-ara tesseract-ocr-bel tesseract-ocr-ben tesseract-ocr-bul tesseract-ocr-ces tesseract-ocr-dan tesseract-ocr-deu tesseract-ocr-ell tesseract-ocr-fin tesseract-ocr-fra tesseract-ocr-heb tesseract-ocr-hin tesseract-ocr-ind tesseract-ocr-isl tesseract-ocr-ita tesseract-ocr-jpn tesseract-ocr-kor tesseract-ocr-nld tesseract-ocr-nor tesseract-ocr-pol tesseract-ocr-por tesseract-ocr-ron tesseract-ocr-rus tesseract-ocr-spa tesseract-ocr-swe tesseract-ocr-tha tesseract-ocr-tur tesseract-ocr-ukr tesseract-ocr-vie tesseract-ocr-chi-sim tesseract-ocr-chi-tra
COPY . /app
WORKDIR /app
RUN pip install pillow
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["main.py"]
