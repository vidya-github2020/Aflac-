* Settings
#Force Tags    Ignore

* Variables

* Keywords
Skiptest
    Set Tags          disabled
    Pass Execution    This test is disabled - Manual Test

* Test Cases
TC_01_Verify agent queue availability
    [Tags]    Ignore    E-41984    B-155652    B-154140    B-158253    B-166762
    Skiptest

#  Description: Agent Chat - Limit Number Of Chat Sessions (2)
#    This has been tested against each of our Agent Queues: Claims, Everwell, General

#  suite setup:
#    Open the Pega Intg env and login as a CCS agent (Chrome)
#    Add the agent to the work queues
#
#  TC_01:
#    Open a user live chat session in a new browser (Firefox)
#    Connect to a queue: ie- claims
#      - Accept the chat as the CCS agent
#    Leave the chat open/ active
#
#    Open a second user live chat session in a new browser (Edge)
#    Connect to a queue: ie- claims
#      - Accept the chat as the CCS agent
#    Leave the chat open/ active
#
#    Open a third user live chat session in a new browser (IE)
#    Connect to a queue: ie- claims
#    Verify that the CCS agent is NOT prompt to answer the incoming chat session
#    Verify that the user has not been connected to a CCS and remains in a waiting queue
#
#  TC_02:
#    End a user live chat session (user completes survey/ ccs wraps up the session)
#
#    Verify that third user live chat session from above is now redirect to the CCS queue
#      - Accept the chat as the CCS agent
#    Leave the chat open/ active
#
#    Open a fourth user live chat session in a new browser
#      - Use either Firefox or Edge -> depends on what user live chat session you ended
#    Connect to a queue: ie- claims
#    Verify that the CCS agent is NOT prompt to answer the incoming chat session
#    Verify that the user has not been connected to a CCS and remains in a waiting queue
#
#
#  TC_03:
#    End a user live chat session (user completes survey/ ccs wraps up the session)
#    End a second user live chat session (user completes survey/ ccs wraps up the session)
#
#    Verify that fourth user live chat session from above is now redirect to the CCS queue
#      - Accept the chat as the CCS agent
#    Leave the chat open/ active
#
#    Open a fifth user live chat session in a new browser
#      - The browser will depend on what user live chat session you open/ended
#    Connect to a queue: ie- claims
#      - Accept the chat as the CCS agent
#    Leave the chat open/ active
#
#    Open a sixth user live chat session in a new browser
#      - The browser will depend on what user live chat session you have open/ended
#    Connect to a queue: ie- claims
#    Verify that the CCS agent is NOT prompt to answer the incoming chat session
#    Verify that the user has not been connected to a CCS and remains in a waiting queue
#
#
#    B-166762: Estimated wait time
#    This is an internal system setting in Pega. It is correctly switch on in Dev and NOT IntG.
#    When switched on, once you join a CCS queue, it will display the position you are in the queue, and estimated wait time.
#    ie: You are number 1 in the queue. The expected wait time is less than 30 seconds.
#
#    When the setting is not switch on, it will display as: You are number 1 in the queue.