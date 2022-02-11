*** Settings ***

Documentation     This function will check for the following condition :
...               If -100<num<100  && num != 13  return  num/10 else raise expection
Library           testmain.py
Library           random

*** Test Cases ***
Testcase1
    [Documentation]  Positive Scenario:
    ...              Input = 100
    ...              Expected result => Test Case Passed
    ${float}=         Convert To number  100
    ${output} =       output  ${float}
    Log To Console    The input number is ${float}
    Log To Console    Return value from Output() is ${output}

Testcase2
    [Documentation]  Positive Scenario:
    ...              Input = -90
    ...              Expected result => Test Case Passed
    ${float}=         Convert To number  -90
    ${output} =       output  ${float}
    Log To Console    The input number is ${float}
    Log To Console    Return value from Output() is ${output}

Testcase3
    [Documentation]  Positive Scenario:
    ...              Input = 50
    ...              Expected result => Test Case Passed
    ${float}=         Convert To number  50
    ${output} =       output  ${float}
    Log To Console    The input number is ${float}
    Log To Console    Return value from Output() is ${output}

Testcase4
    [Documentation]  Negative Scenario:
    ...              Input = 13
    ...              Execution halted as exception raised => Test Case Failed
    ${float}=         Convert To number  13
    ${output} =       output  ${float}
    Log To Console    The input number is ${float}
    Log To Console    Return value from Output() is ${output}

Testcase5
    [Documentation]  Negative Scenario:
    ...              Input = -200
    ...              Execution halted as exception raised => Test Case Failed
    ${float}=         Convert To number  -200
    ${output} =       output  ${float}
    Log To Console    The input number is ${float}
    Log To Console    Return value from Output() is ${output}

Testcase6
    [Documentation]  Negative Scenario:
    ...              Input = 120
    ...              Execution halted as exception raised => Test Case Failed
    ${float}=         Convert To number  120
    ${output} =       output  ${float}
    Log To Console    The input number is ${float}
    Log To Console    Return value from Output() is ${output}

Testcase7
    [Documentation]  Random number Scenario:
    ...              Random input number in range -100 to 100
    ${random_float}=     Evaluate  random.uniform(-100, 100)  modules=random
    ${output} =       output  ${random_float}
    Log To Console    The input number is ${random_float}
    Log To Console    Return value from Output() is ${output}
