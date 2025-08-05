import sys
import os
import shutil
from robot import run

def run_tests(platform, test_suite=None, test_cases=None, tags=None):
    platform = platform.lower()

    if platform not in ["android", "ios"]:
        print("Usage:")
        print("  python TestRunner.py [android|ios] [optional: suite.robot] [--test 'Test Case'] [--tag TagName]")
        sys.exit(1)

    base_test_path = os.path.join("Tests", platform.capitalize())

    # Suite path
    if test_suite:
        test_path = os.path.join(base_test_path, test_suite)
        if not os.path.isfile(test_path):
            print(f"Error: Test suite not found -> {test_path}")
            sys.exit(1)
    else:
        test_path = base_test_path

    # Output settings
    OUTPUT_DIR = "results"
    LOG_NAME = "log.html"
    REPORT_NAME = "report.html"
    OUTPUT_NAME = "output.xml"

    if os.path.exists(OUTPUT_DIR):
        shutil.rmtree(OUTPUT_DIR)
    os.makedirs(OUTPUT_DIR)

    # Build arguments
    robot_args = {
        'outputdir': OUTPUT_DIR,
        'log': LOG_NAME,
        'report': REPORT_NAME,
        'output': OUTPUT_NAME,
        'loglevel': 'DEBUG',
        'console': 'verbose'
    }

    if test_cases:
        robot_args['test'] = test_cases
    if tags:
        robot_args['include'] = tags

    # Run Robot Framework
    run(test_path, **robot_args)


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description="Robot Framework Test Runner")

    parser.add_argument("platform", choices=["android", "ios"], help="Target platform")
    parser.add_argument("suite", nargs="?", help="Optional .robot test suite file")

    parser.add_argument("--test", action="append", help="Test case name(s) to run")
    parser.add_argument("--tag", action="append", help="Tag(s) to include")

    args = parser.parse_args()

    run_tests(
        platform=args.platform,
        test_suite=args.suite,
        test_cases=args.test,
        tags=args.tag
    )
