function loadPage() {
    
    onLoad().then((res)=>{
        let points = document.createElement('p');
        points.setAttribute('id', 'points');
        points.innerText = `Puntos ${localStorage.getItem('stage') - 1}`;
        pointsSec.appendChild(points);
    
        let question = document.createElement('p');
        question.setAttribute('id', 'question-text');
        let optionsLabel =  document.createElement('label');
        optionsLabel.setAttribute('id', 'question-label');
        let optionsDiv = document.createElement('div');
        optionsDiv.setAttribute('id', 'answers');
        
        let endBtn = createEndBtn(question,optionsLabel,optionsDiv,points);
        createAns(res, question,optionsLabel,optionsDiv,points,endBtn);
        
        question.innerText = res.questions[0].questions;
        optionsLabel.innerText = "Opciones:"
    
        questionsSec.appendChild(question);
        questionsSec.appendChild(optionsLabel);
        questionsSec.appendChild(optionsDiv);
        questionsSec.appendChild(endBtn);


    })
    
}

loadPage();

winnerRecord(); 

roundRecords(); 
