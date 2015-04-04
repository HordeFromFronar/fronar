//getGenderedPossessive(gender)
gender = argument[0];
caps = argument[1];
if(caps){
    if (gender == "M"){
        return "Male";
    }
    if (gender == "F"){
        return "Female"
    }
    //I DONT KNOW WHAT THIS SHOULD BE/IF WE HAVE TRANS PEOPLE
    return "trans*"
} else {
    if (gender == "M"){
        return "male";
    }
    if (gender == "F"){
        return "female"
    }
    //I DONT KNOW WHAT THIS SHOULD BE/IF WE HAVE TRANS PEOPLE
    return "trans*"
}
