# Final project
#Learning Math for kids, user creation !



# Function that open the file
import random
def welcome():
    print ("~~ Welcome to The funny place for kids to learn math ~~")
#menu for login or create an account
def menuforlogin():
    mlist = ["1. To Login", "2. New user "]
    print(mlist[0])
    print(mlist[1])

#Login
def menueloginselection  (selection1):

    login=input("Type here: ")
    if login == '1':
        with open("Users.txt","r") as a:
            useres= [linea.strip() for linea in a]
            username=input("Enter your username: ")
            pass1= input("Enter your password: ")
            if username in useres:
                print("Valid username")
            else :
                print("Not a valid user")
                print ("would you like to be register press 1 for yes or 2 for no? ")
                register= input()
                if register == '1':
                    print ("Type you name: ")
                    name = input ()
                    print ("Type a password: ")
                    passs= input()
                    users=open("Users.txt","a")
                    users.write(name)
                    upass=open("password.txt","a")
                    upass.write(passs)
                elif register == '2':
                     print("Thank you")

# registration without a previous try to log in.
    elif login == '2':
        print ("Type your name: ")
        name = input ()
        print ("Type a password: ")
        passs2= input()
        retypass=0
        while(retypass!=passs2):
            retypass=input("retype the password")
            retypass= input()
        users2=open("Users.txt","a")
        users2.write(users2)
        upass2.write("\n")
        upass2=open("password.txt","a")
        upass2.write(passs2)
        upass2.write("\n")
        return login

#menu for operations
def menu():
    mlist = ["1. For adding '+'", "2. For subtracting '-' ", "3. To Multiply '*'", "4. For Division '/'", "5. Exit"]
    print(mlist[0])
    print(mlist[1])
    print(mlist[2])
    print(mlist[3])
    print(mlist[4])
    return mlist
def menuchoice():
    uoption = input("What do you want to learn today ")
    foption= int(uoption)
    fuoption=0
    while fuoption > 5 or fuoption <= 0:
        print("Not a valid option.")
        fuoption = input("Please try again: ")
    else:
        return fuoption
def correctorincorrect(useranswer, canswer):
    if useranswer == canswer:
        print("Correct.")
    else:
        print("Incorrect.")
    return ()
def answer(problem):
    print("Please enter the answer")
    print(problem="")
    result = int(input(" = "))
    return result
#create a function for the selection of what you want to learn
def usermenuoption(selection):
    for _ in range(1):
        val1=random.randint(1,11)
    for _ in range(1):
        val2=random.randint(1,11)
    if selection == '1':
        print("~~~~~~Addicion~~~~~~")
        operation = (val1) + " + " + (val2)
        solution = val1 + val2
        respuestausuario = answer(problem)
    elif selection == '2':
        print("~~~~~~Substracting~~~~~~")
        operation = (val1) + " - " + (val2)
        solution = val1 - val2
        respuestausuario = answer(problem)
    elif selection == '3':
        print("~~~~~~Multiplicacion~~~~~~")
        operation = (val1) + " * " + (val2)
        solution = val1 * val2
        respuestausuario = answer(problem)
    elif selection == '4':
        print("~~~~~~Division~~~~~~")
        operation = (val1) + " / " + (val2)
        solution = val1 / val2
        respuestausuario = answer(solution)
        return selection
    elif selection == '5':
        exit()

#calling the functions
welcome()
enter=menuforlogin()
enterselect=menueloginselection(enter)
selecionar= menu()
while selecionar != 5:
    qcoree= menuchoice()
    fqcoree=float(qcoree)
    fqcoree=menuchoice()
    result=usermenuoption(selecionar)
    selecionar = menuchoice()
    fselecionar=float(selecionar)
