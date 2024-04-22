const cds = require('@sap/cds');
// const { parseArgs } = require('util');
module.exports = cds.service.impl(async function () {
    let {
        student     
    } = this.entities;
    // const c5re = await cds.connect.to('iflow1');
  

this.on('READ', student.drafts, async (req,next) => {
    debugger
    if(req.data.subject_3 || req.data.subject_1 || req.data.subject_3){
    var data1 = await SELECT.from(student.drafts).where({ s_id: req.data.s_id});
    console.log(data1)

      var num1 = parseInt(data1[0].subject_1,10);
      var num2 = parseInt(data1[0].subject_2,10);
      var num3 = parseInt(data1[0].subject_3,10);

      var sum = 0;
      if (!isNaN(num1)) {
                     sum = sum + num1;
                }  if (! isNaN(num2) ) {
                    sum = sum + num2;
                }  if (! isNaN(num3)) {
                    sum = sum + num3;
                } 
    


            //   const sum = req.data.firstnum + req.data.secondnum;
    console.log(req);
    await cds.update(student.drafts).set({total:sum }) // Update with new data
    .where({ s_id: req.data.s_id});
}
    return next();
});

        //debugger

      
});




