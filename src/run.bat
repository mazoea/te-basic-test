set URL=http://localhost:8280/v1
set TARGETDATAPATH=/opt/mazoea/te-basic-test/src
set TOTAIL=-30
set CURLOPTS=-sS
set PREF="========================================================================"

echo %PREF%
curl %CURLOPTS% "%URL%/online/"

echo %PREF%
curl %CURLOPTS% "%URL%/extract/?async=False&type=text&id=%TARGETDATAPATH%/example.1.png"

echo %PREF%
curl %CURLOPTS% "%URL%/extract/?async=False&type=text&id=%TARGETDATAPATH%/example.1.png&extended=True" | tail %TOTAIL%

echo %PREF%
curl %CURLOPTS% "%URL%/extract/?async=False&type=text&id=%TARGETDATAPATH%/example.2.png"

echo %PREF%
curl %CURLOPTS% "%URL%/extract/?async=False&type=text&id=%TARGETDATAPATH%/example.1.pdf"

echo %PREF%
curl %CURLOPTS% "%URL%/extract/?async=False&type=text&id=%TARGETDATAPATH%/example.1.pdf&extended=True"

echo %PREF%
curl %CURLOPTS% "%URL%/extract/?async=False&type=text&id=%TARGETDATAPATH%/example.1.pdf&force-ocr=True" 

echo %PREF%
curl %CURLOPTS% -H "Content-Type: application/json" -X POST --data @example.data.1.json "%URL%/extract/"

echo %PREF%
curl %CURLOPTS% -H "Content-Type: application/json" -X POST --data @example.data.1.async.json "%URL%/extract/"
