import hash_checker
import os
import subprocess
import sys
commands=[]
dircommands = []
filecommands = []
configcommands = []

def direct_commands():
    contin = 'true'
    global dircommands
    while contin == 'true':
        try:
            filepath = input('Enter a filepath to your directories list:\n')
            file = open(filepath, 'r')
            directories = file.readlines()
            for i in directories:
                dircommands.append('y\n')
                dircommands.append(i)
            dircommands.insert(0,'d\n')
            dircommands.append('n\n')
            dircommands.append('q\n')
            contin = 'done'
            file.close()
            os.remove(filepath)
        except:
            print('Improper file path\n')

def direct_write():
    global dircommands
    file = open('/root/Documents/dircom.txt','a')
    for i in dircommands:
        file.write(i)
    file.close()

def file_commands():
    contin = 'true'
    global filecommands
    while contin == 'true':
        try:
            filepath = input('Enter a filepath to your files list:\n')
            file = open(filepath, 'r')
            files = file.readlines()
            for i in files:
                filecommands.append('y\n')
                filecommands.append(i)
            filecommands.insert(0,'f\n')
            filecommands.append('n\n')
            filecommands.append('q\n')
            contin = 'done'
            file.close()
            os.remove(filepath)
        except:
            print('Improper file path\n')

def file_write():
    global filecommands
    file = open('/root/Documents/filecom.txt','a')
    for i in filecommands:
        file.write(i)
    file.close()

def config_commands():
    contin = 'true'
    global configcommands
    while contin == 'true':
        try:
            filepath = input('Enter a filepath to your configuration file list:\n')
            file = open(filepath, 'r')
            configs = file.readlines()
            for i in configs:
                configcommands.append('chf\n')
                configcommands.append(i)
            configcommands.append('q\n')
            contin = 'done'
            file.close()
            os.remove(filepath)
        except:
            print('Improper file path\n')

def config_write():
    global configcommands
    file = open('/root/Documents/configcom.txt','a')
    for i in configcommands:
        file.write(i)
    file.close()

def call_myself():
    global commands
    print('Calling myself...')
    p = subprocess.Popen([sys.executable, __file__], stdin=subprocess.PIPE)
    for command in commands:
        p.stdin.write((command+'\n').encode())

def dir_setup_file():
    global commands
    contin = 'true'
    while contin == 'true':
        try:
            filepath = '/root/Documents/dircom.txt'
            file = open(filepath)
            command_list = file.readlines()
            for i in command_list:
                value = i.strip()
                commands.append(value)
            contin = 'done'
            file.close()
        except:
            print('Improper filepath\n')
    
def file_setup_file():
    global commands
    contin = 'true'
    while contin == 'true':
        try:
            filepath = '/root/Documents/filecom.txt'
            file = open(filepath)
            command_list = file.readlines()
            for i in command_list:
                value = i.strip()
                commands.append(value)
            contin = 'done'
            file.close()
        except:
            print('Improper filepath\n')
            
def config_setup_file():
    global commands
    contin = 'true'
    while contin == 'true':
        try:
            filepath = '/root/Documents/configcom.txt'
            file = open(filepath)
            command_list = file.readlines()
            for i in command_list:
                value = i.strip()
                commands.append(value)
            contin = 'done'
            file.close()
        except:
            print('Improper filepath\n')
            
def program():
    contin = 'true'
    while contin == 'true':
        print(
            'd = Directory command setup\n'
            'f = File command setup\n'
            'c = Configuration files setup\n'
            'q = End command setup'
            )
        option = input('\nChoose an option:\n').lower()
        if option == 'd':
            direct_commands()
            direct_write()
        elif option == 'f':
            file_commands()
            file_write()
        elif option == 'c':
            config_commands()
            config_write()
        elif option == 'q':
            contin = 'done'
        else:
            print('Invalid option\n')
def side_program():
    contin = 'true'
    while contin == 'true':
        print(
            'd = Directories',
            'f = Files',
            'c = Configuration files',
            'q = End command setup'
            )
        option = input('\nChoose an option:\n').lower()
        if option == 'd':
            dir_setup_file()
            call_myself()
        elif option == 'f':
            file_setup_file()
            call_myself()
        elif option == 'c':
            config_setup_file()
            call_myself()
        elif option == 'q':
            contin = 'done'
        else:
            print('Invalid option\n')
def mainprogram():
    contin = 'true'
    while contin == 'true':
        print(
            'sh = Setup hash_checker\n',
            'sc = Setup commands list\n',
            'q = End hash setup'
            )
        option = input('\nChoose an option:\n').lower()
        if option == 'sh':
            side_program()
        elif option == 'sc':
            program()
        elif option == 'q':
            contin = 'done'
        else:
            print('Invalid option\n')

mainprogram()   
