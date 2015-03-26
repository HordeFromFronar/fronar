//getGenderedPossessive(gender)
gender = argument[0];
caps = argument[1];
if(caps){
    if (gender == "M"){
        return "His";
    }
    if (gender == "F"){
        return "Her"
    }
    //I DONT KNOW WHAT THIS SHOULD BE/IF WE HAVE TRANS PEOPLE
    return "PC trans* Posessive"
} else {
    if (gender == "M"){
        return "his";
    }
    if (gender == "F"){
        return "her"
    }
    //I DONT KNOW WHAT THIS SHOULD BE/IF WE HAVE TRANS PEOPLE
    return "PC trans* posessive"
}
