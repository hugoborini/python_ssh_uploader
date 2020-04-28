read -p 'Enter the path to your ssh key : ' path_to_ssh_key
read -p 'Enter your root name for the server : ' user_name
read -p 'Enter the ip adress of your server : ' ip_serv

echo "import os
from tkinter import * 

fenetre = Tk()

fenetre.geometry('595x323')

local_path_label = Label(fenetre, text='path to you local file: ')
serv_path_label = Label(fenetre, text='path to your sever: ')

def upload_folder_ssh(p_file, serv_path):
    os.system('scp -r -i $path_to_ssh_key ' + p_file + ' $user_name@$ip_serv:' + serv_path)

def createInput(message) :
    input_str =  StringVar()
    input_str.set(message)
    input_ui = Entry(fenetre, textvariable=input_str, width=30)

    return input_ui



path_local_input = createInput('exemple /path/to/local/file')
path_serv_input = createInput('exemple /path/to/your/serv')
send_bouton=Button(fenetre, text='send your file', command=lambda : upload_folder_ssh(path_local_input.get(), path_serv_input.get()))


def createall() : 
    local_path_label.pack(padx=50, pady=10)
    path_local_input.pack(padx=5, pady=20)
    serv_path_label.pack(padx=5, pady=2)
    path_serv_input.pack(padx=5, pady=20)
    send_bouton.pack(padx=5, pady=2)


createall()
fenetre.mainloop()" > upload_ssh.py