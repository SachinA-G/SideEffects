using db as d from '../db/schema';

service MyService {

    
   @odata.draft.enabled
    entity college as projection on d.college;
    
  @Common.SideEffects : 
            {
                SourceProperties :
                [
                    'subject_1' , 'subject_2' , 'subject_3'
                ],
                TargetProperties : [
                     'total'
                ],
            }

  
    entity student as projection on d.student;
    entity faculty as projection on d.faculty;
    entity studentLanguage as projection on d.studentLanguage;

}
