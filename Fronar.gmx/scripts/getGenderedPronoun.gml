//getGenderedPossessive(gender)
gender = argument[0];
caps = argument[1];
if(caps){
    if (gender == "m"){
        return "He";
    }
    if (gender == "f"){
        return "She"
    }
    //I DONT KNOW WHAT THIS SHOULD BE/IF WE HAVE TRANS PEOPLE
    return "PC trans* Pronoun"
} else {
    if (gender == "m"){
        return "he";
    }
    if (gender == "f"){
        return "she"
    }
    //I DONT KNOW WHAT THIS SHOULD BE/IF WE HAVE TRANS PEOPLE
    return "PC trans* pronoun"
}