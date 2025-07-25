from robot import run
import os

# Define test files or directories
TEST_PATH = os.path.join("Tests")

# Optional: Customize output paths
OUTPUT_DIR = "results"
LOG_NAME = "log.html"
REPORT_NAME = "report.html"
OUTPUT_NAME = "output.xml"

# Run tests
run(TEST_PATH,
    outputdir=OUTPUT_DIR,
    log=LOG_NAME,
    report=REPORT_NAME,
    output=OUTPUT_NAME)