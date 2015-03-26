//getGenderedPronoun(gender)
gender = argument[0];
caps = argument[1];
if(caps){
    if (gender == "M"){
        return "He";
    }
    if (gender == "F"){
        return "She"
    }
    //I DONT KNOW WHAT THIS SHOULD BE/IF WE HAVE TRANS PEOPLE
    return "PC trans* Pronoun"
} else {
    if (gender == "M"){
        return "he";
    }
    if (gender == "F"){
        return "she"
    }
    //I DONT KNOW WHAT THIS SHOULD BE/IF WE HAVE TRANS PEOPLE
    return "PC trans* pronoun"
}
