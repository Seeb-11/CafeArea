class CafeValidators{
  static String? validateEmail(String? value){


    if(value == null || value.isEmpty){
      return "Email is required";
    }

    // Regular Exp for email validation
      final  emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

      if(!emailRegExp.hasMatch(value)){
        return "Invalid email address";
      }
  return null;

  }

  static String? validatePassword(String? value){
    if(value==null || value.isEmpty){
      return 'Password is required';
    }
      //  Check for minimum password length
      if(value.length<6){
        return "Password must be at least 6 characters long";
      }

      
    //  Atleast 1 uppsercase
          
    final RegExp upperCaseRegex = RegExp(r'^(?=.*[A-Z]).+$');
      if(!value.contains(upperCaseRegex)){
        return "Password must contain at least one uppercase letter";
      }

    //  Atleast 1 Number
    final RegExp numberRegex = RegExp(r'^(?=.*\d).+$');

     if(!value.contains(numberRegex)){
        return "Password must contain at least one number";
      }
    // Atleast 1 character

  final RegExp specialCharRegex = RegExp(r'^(?=.*[@$!%*?&]).+$');
   if(!value.contains(specialCharRegex)){
        return "Password must contain at least one special character";
      }
      return null;
  }



  static String? validatePhoneNumber(String? value){
       if(value==null || value.isEmpty){
      return 'Password is required';
    }
      final RegExp phoneRegex = RegExp(r'^\+?[0-9]{7,15}$');
       if(!value.contains(phoneRegex)){
        return "Invalid phone number format (10 digit required)";
      }
    return null;


  }
}