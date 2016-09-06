import base64, sys, json
json.dump({"data": base64.standard_b64encode(open(sys.argv[1], mode="rb").read())}, open(sys.argv[2], mode="wb"))
