//getGenderedPossessive(gender)
gender = argument[0];
caps = argument[1];
if(caps){
    if (gender == "m"){
        return "His";
    }
    if (gender == "f"){
        return "Her"
    }
    //I DONT KNOW WHAT THIS SHOULD BE/IF WE HAVE TRANS PEOPLE
    return "PC trans* Posessive"
} else {
    if (gender == "m"){
        return "his";
    }
    if (gender == "f"){
        return "her"
    }
    //I DONT KNOW WHAT THIS SHOULD BE/IF WE HAVE TRANS PEOPLE
    return "PC trans* posessive"
}
