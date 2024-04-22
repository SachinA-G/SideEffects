using MyService as service from '../../srv/service';
using from '../../db/schema';

annotate service.college with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'c_id',
            Value : c_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'c_name',
            Value : c_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'c_adress',
            Value : c_adress,
        },
        {
            $Type : 'UI.DataField',
            Label : 'c_phoneNo',
            Value : c_phoneNo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'c_mail',
            Value : c_mail,
        },
    ]
);
annotate service.college with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'c_id',
                Value : c_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'c_name',
                Value : c_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'c_adress',
                Value : c_adress,
            },
            {
                $Type : 'UI.DataField',
                Label : 'c_phoneNo',
                Value : c_phoneNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'c_mail',
                Value : c_mail,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Student',
            ID : 'Student',
            Target : 'colltostudent/@UI.LineItem#Student',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'faculty',
            ID : 'faculty',
            Target : 'colltofaculty/@UI.LineItem#faculty',
        },
    ]
);
annotate service.student with @(
    UI.LineItem #Student : [
        {
            $Type : 'UI.DataField',
            Value : studtocollege.colltostudent.s_id,
            Label : 's_id',
        },
        {
            $Type : 'UI.DataField',
            Value : studtocollege.colltostudent.s_name,
            Label : 's_name',
        },
        {
            $Type : 'UI.DataField',
            Value : studtocollege.colltostudent.s_adress,
            Label : 's_adress',
        },
        {
            $Type : 'UI.DataField',
            Value : studtocollege.colltostudent.s_mail,
            Label : 's_mail',
        },
        {
            $Type : 'UI.DataField',
            Value : studtocollege.colltostudent.s_phoneno,
            Label : 's_phoneno',
        },
        {
            $Type : 'UI.DataField',
            Value : studtocollege.colltostudent.subject_1,
            Label : 'subject_1',
        },
        {
            $Type : 'UI.DataField',
            Value : studtocollege.colltostudent.subject_2,
            Label : 'subject_2',
        },
        {
            $Type : 'UI.DataField',
            Value : studtocollege.colltostudent.subject_3,
            Label : 'subject_3',
        },
        {
            $Type : 'UI.DataField',
            Value : total,
            Label : 'total',
        },]
);
annotate service.student with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Student',
            ID : 'Student',
            Target : '@UI.FieldGroup#Student',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'faculty',
            ID : 'faculty',
            Target : '@UI.FieldGroup#faculty',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'langauge',
            ID : 'langauge',
            Target : 'studenttolang/@UI.LineItem#langauge',
        },
    ],
    UI.FieldGroup #Student : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : s_id,
                Label : 's_id',
            },{
                $Type : 'UI.DataField',
                Value : s_name,
                Label : 's_name',
            },{
                $Type : 'UI.DataField',
                Value : s_mail,
                Label : 's_mail',
            },{
                $Type : 'UI.DataField',
                Value : s_phoneno,
                Label : 's_phoneno',
            },{
                $Type : 'UI.DataField',
                Value : subject_1,
                Label : 'subject_1',
            },{
                $Type : 'UI.DataField',
                Value : subject_2,
                Label : 'subject_2',
            },
            {
                $Type : 'UI.DataField',
                Value : studtocollege.colltostudent.subject_3,
                Label : 'subject_3',
            },{
                $Type : 'UI.DataField',
                Value : total,
                Label : 'total',
            },
            {
                $Type : 'UI.DataField',
                Value : c_id,
                Label : 'c_id',
            },
            {
                $Type : 'UI.DataField',
                Value : s_adress,
                Label : 's_adress',
            },],
    }
);
annotate service.student with {
    c_id @Common.Text : {
        $value : s_id,
        ![@UI.TextArrangement] : #TextSeparate,
    }
};
annotate service.student with @(
    UI.FieldGroup #faculty : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : studtocollege.colltofaculty.t_id,
                Label : 't_id',
            },{
                $Type : 'UI.DataField',
                Value : studtocollege.colltofaculty.t_name,
                Label : 't_name',
            },{
                $Type : 'UI.DataField',
                Value : studtocollege.colltofaculty.t_phoneno,
                Label : 't_phoneno',
            },{
                $Type : 'UI.DataField',
                Value : studtocollege.colltofaculty.t_position,
                Label : 't_position',
            },{
                $Type : 'UI.DataField',
                Value : studtocollege.colltofaculty.t_address,
                Label : 't_address',
            },{
                $Type : 'UI.DataField',
                Value : studtocollege.colltofaculty.c_id,
                Label : 'c_id',
            },],
    }
);
annotate service.faculty with @(
    UI.LineItem #faculty : [
    ]
);
annotate service.studentLanguage with @(
    UI.LineItem #langauge : [
        {
            $Type : 'UI.DataField',
            Value : L_id,
            Label : 'L_id',
        },{
            $Type : 'UI.DataField',
            Value : l_name,
            Label : 'l_name',
        },{
            $Type : 'UI.DataField',
            Value : l_details,
            Label : 'l_details',
        },{
            $Type : 'UI.DataField',
            Value : s_id,
            Label : 's_id',
        },]
);
