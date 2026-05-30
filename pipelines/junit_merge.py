import os
import xml.etree.ElementTree as ET

# Customise test directory as appropriate
DIR = '/tmp/pave_junit'

if __name__ == "__main__":
    failures = 0
    tests = 0
    errors = 0
    time = 0.0
    cases = []
    # Loop through files and append their top level values.
    for filename in os.listdir(DIR):
        if filename.endswith('.xml'):
            fullname = os.path.join(DIR, filename)
            tree = ET.parse(fullname)
            test_suite = tree.getroot()
            failures += int(test_suite.attrib['failures'])
            tests += int(test_suite.attrib['tests'])
            errors += int(test_suite.attrib['errors'])
            time += float(test_suite.attrib['time'])
            cases.append(list(test_suite))
    # Create new top level root.
    new_root = ET.Element('testsuite')
    new_root.attrib['name'] = 'AgentChannel'
    new_root.attrib['failures'] = '%s' % failures
    new_root.attrib['tests'] = '%s' % tests
    new_root.attrib['errors'] = '%s' % errors
    new_root.attrib['time'] = '%s' % time
    for case in cases:
        new_root.extend(case)
    new_tree = ET.ElementTree(new_root)
    new_tree.write("junitreport.xml")