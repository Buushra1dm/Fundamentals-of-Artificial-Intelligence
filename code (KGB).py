#Project CCAI-221
#Team(students name):
#Dania salim      2111168
#Shatha aldhahrr  2111144
#Bushra alzeghabi 2110066
#Bushra Dajam     2110054
#Game
#Game rules:
#1-It consists of two players (user, computer)
#2-The user plays against the computer
#3-The Grandfather beats the Boy
#4-The Boy beats the Girl
#5-The Girl beat the Grandfather

import random
choices = ['grandpa','boy','girl'] 
user_score = 0 
computer_score=0
#Displays the game interface and rules
print("************Welcome to our game(KGB)************")
print("----> Game rules: ******************************")
print("1-The Grandfather beats the Boy\n2-The Boy beats the Girl\n3-The Girl beat the Grandfather\n4-The winner whose score reach 5")
print("************************************************")
#Asks the user to enter her/his name and take input (name)
name=input("Enter your name :")
#Print a welcome message
print(f"\nWelcome {name.title()}\n")
def game(user, computer): 
    global user_score 
    global computer_score
    #Displays the options chosen by the computer and the user
    print(f"You chose {user}, computer chose {computer}.\n")
    #Checks if the computer tied with the user (choose the same option)
    if user == computer: 
        print (f"Both players selected {user}. It's a tie!\n") 
    #Checks if the user choose grandpa and we have two if the first if computer choose boy the user win 
    #else if computer choose anything else (gril) computer will win
    elif user == "grandpa": 
        if computer == "boy":
            #User score increase because he/she won
            user_score += 1
            #Print and Explanation of the reason of who won in addition to displaying the points of the user and the computer
            print(f"The Grandfather beat Boy!! You scored 1 point. Your score is {user_score}, computer score is {computer_score}\n")
        else:
            #computer score increase because it won
            computer_score += 1
            #Print and Explanation of the reason of who won in addition to displaying the points of the user and the computer
            print(f"The Girl beat Grandpa!! Computer scored 1 point. Your score is {user_score}, computer score is {computer_score}\n")
    #Checks if the user choose girl and we have two if the first if computer choose grandpa the user win 
    #else if computer choose anything else (boy) computer will win
    elif user == "girl": 
        if computer == "grandpa":
            #User score increase because he/she won
            user_score += 1
            #Print and Explanation of the reason of who won in addition to displaying the points of the user and the computer
            print(f"The Girl beat the Grandfather!! You scored 1 point. Your score is {user_score}, computer score is {computer_score}\n") 
        else:
            #computer score increase because it won
            computer_score += 1
            #Print and Explanation of the reason of who won in addition to displaying the points of the user and the computer
            print (f"The Boy beat the Girl!! Computer scored 1 point. Your score is {user_score}, computer score is {computer_score}\n")
    #Checks if the user choose boy and we have two if the first if computer choose girl the user win 
    #else if computer choose anything else (grandpa) computer will win
    elif user == "boy":
        if computer == "girl":
            #User score increase because he/she won
            user_score += 1 
            #Print and Explanation of the reason of who won in addition to displaying the points of the user and the computer
            print (f"The Boy beat the Girl!! You scored 1 point. Your score is {user_score}, computer score is {computer_score}\n")
        else:
            #computer score increase because it won
            computer_score += 1
            #Print and Explanation of the reason of who won in addition to displaying the points of the user and the computer
            print (f"The Grandfather beat the Boy!! Computer scored 1 point. Your score is {user_score}, computer score is {computer_score}\n")
                   
                   
    
while True:
    #If the user's score value reaches 5:
    #1- It will display the winning message
    #2- Program execution stops
    if user_score == 5: 
        print("="*41, f"\nYour score reached 5. YOU WIN {name}!!\n","="*40,"\n")
        print("="*21, "\nComputer lose\n","="*20)
        exit()
    #If the computer's score value reaches 5:
    #1- It will display the winning message
    #2- Program execution stops
    elif computer_score == 5: 
        print("="*41, "\nComputer score reached 5. COMPUTER WIN!!\n","="*40,"\n")
        print("="*21, f"\n{name} lose\n","="*20)
        exit()
    #Ask the user to enter his/her choices
    user_choice = input("Enter a choice ( grandpa , boy , girl) : ").lower()
    #The computer chooses randomly by random method
    computer_choice = random.choice (choices) 
    if user_choice == "quitgame": 
        print("FINISH") 
        exit() 
    #Checks if the user entered invalid choices
    elif not user_choice in choices: 
        print("You entered invalid choice\nplease try again!!")
    #if the score of user or computer not reached 5 then will continue the game
    #Sends the parameter(user choice & computer choice) to the function game
    else:
        game(user_choice, computer_choice)
