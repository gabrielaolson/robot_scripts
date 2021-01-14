import csv
import os


def create_new_files(tests_file, title_file):

    if ":" in title_file:
        file_name = title_file.split(":")[0].replace(" ", "_").replace("/", "_") + ".robot"
        file_path = os.path.join("Tests", file_name)
        new_file = open(file_path, "w")
        new_file.write("*** Settings ***\n")
        new_file.write("Test Setup                  Set Test Variable       ${passed}    ${FALSE}\n")
        new_file.write("Test Teardown               Should Be True          ${passed}\n\n")
        new_file.write("*** Test Cases ***\n")
        return new_file
        
    else:
        file_path = os.path.join("Tests/", "Unclassified_Category.robot")
        new_file = open(file_path, "w")
        new_file.write("*** Settings ***\n")
        new_file.write("Test Setup                  Set Test Variable       ${passed}    ${FALSE}\n")
        new_file.write("Test Teardown               Should Be True          ${passed}\n\n")
        new_file.write("*** Test Cases ***\n")
        return new_file


with open('JIRA_Report.csv', newline='') as csvfile:
    readerCsv = csv.reader(csvfile, delimiter=',')
    with open("tests.robot", "w") as tests_file:
        tests_file.write("*** Test Cases ***\n\n")
        is_title = True
        for row in readerCsv:
            if is_title:
                is_title = False
                continue
            create_new_files(tests_file, row[4])

def create_test_scenario(tests_file, title_file, tag_task):

     if ":" in title_file:
        file_name = title_file.split(":")[0].replace(" ", "_").replace("/", "_") + ".robot"
        path = os.path.join("Tests", file_name)
        new_file= open(path, "a")
        new_file.write("{0}\n".format(title_file))
        new_file.write("    [Tags]    {0}    manual    Not Executed\n".format(tag_task))
        new_file.write("    Log       Not Executed\n\n")
        
     else:
        path= os.path.join("Tests", "Unclassified_Category.robot")
        new_file= open(path, "a")
        new_file.write("{0}\n".format(title_file))
        new_file.write("    [Tags]    {0}    manual    Not Executed\n".format(tag_task))
        new_file.write("    Log       Not Executed\n\n")

with open('JIRA_Report.csv', newline='') as csvfile:
    readerCsv = csv.reader(csvfile, delimiter=',')
    is_title = True
    
    for row in readerCsv:
        if is_title:
            is_title = False
            continue
        
        if ":" in row[4]:
            file_name = row[4].split(":")[0].replace(" ", "_").replace("/", "_") + ".robot"
            path = os.path.join("Tests", file_name)
            with open(path, "a") as tests_file:
                create_test_scenario(tests_file, row[4], row[1])
        else:
            with open("Tests/Unclassified_Category.robot", "a") as tests_file:
                create_test_scenario(tests_file, row[4], row[1])
          


        