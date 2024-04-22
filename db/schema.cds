namespace db;

entity college{
    key c_id : String; 
    c_name : String;
    c_adress : String;
    c_phoneNo :String;
    c_mail : String;
    colltostudent : Composition of many student on colltostudent.studtocollege = $self; 
    // colltostudent : Composition of many student on colltostudent.c_id = c_id;
    colltofaculty : Composition of many faculty on colltofaculty.c_id = c_id;
}

entity student{
    key s_id : String;
    s_adress : String;
    s_phoneno : String;
    s_mail : String;
    s_name : String;
    subject_1 : String;
    subject_2 : String;
        subject_3 : String;
    total : Integer;
    c_id : String;
    studtocollege : Association to one college on studtocollege.c_id = c_id;

    studenttolang : Composition of many studentLanguage on studenttolang.languagetostudent = $self;

}

entity faculty{
    t_id : String;
    t_name : String @UI.Placeholder : 'Shivalinge gowdru';
    t_address : String @mandatory;
    t_phoneno : String  ;
    t_position : String @UI.Placeholder : 'professor' @readonly;
    c_id : String;
    facultytocollege : Association to one college on facultytocollege.c_id = c_id;

}

entity studentLanguage{
        L_id : String;
        l_name :String;
        l_details : String;
        s_id : String;
        languagetostudent : Association to one student on languagetostudent.s_id = s_id;

}