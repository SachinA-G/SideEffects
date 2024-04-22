sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sideeffectapp/test/integration/FirstJourney',
		'sideeffectapp/test/integration/pages/collegeList',
		'sideeffectapp/test/integration/pages/collegeObjectPage'
    ],
    function(JourneyRunner, opaJourney, collegeList, collegeObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sideeffectapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThecollegeList: collegeList,
					onThecollegeObjectPage: collegeObjectPage
                }
            },
            opaJourney.run
        );
    }
);