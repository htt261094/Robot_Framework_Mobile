import sys
import os
from robot import run

# Default: run all tests
platform = None
if len(sys.argv) > 1:
    platform = sys.argv[1].lower()

if platform == "android":
    TEST_PATH = os.path.join("Tests", "Android")
elif platform == "ios":
    TEST_PATH = os.path.join("Tests", "iOS")
else:
    print("Usage: python TestRunner.py [android|ios]")
    sys.exit(1)

# Output settings
OUTPUT_DIR = "results"
LOG_NAME = "log.html"
REPORT_NAME = "report.html"
OUTPUT_NAME = "output.xml"

# Run tests
run(TEST_PATH,
    outputdir=OUTPUT_DIR,
    log=LOG_NAME,
    report=REPORT_NAME,
    output=OUTPUT_NAME,
    loglevel='DEBUG',         # Full trace info
    console='verbose')        # Show failures in terminal
