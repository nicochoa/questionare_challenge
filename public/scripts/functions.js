//getting random id for question request
function randomId() {
    let id = Math.floor(Math.random()*(5))+1 ;
    return id
}


// request to DB 
async function onLoad() {
    let category;
    if(!localStorage.getItem('stage')){
        category = 1;
        localStorage.setItem('stage', 1);
    } else {
        category = localStorage.getItem('stage')
    }
    
    try {
        let url = `http://localhost:4400/questions`;
        let request ={
            table: `cat${category}`,
            id: randomId()
        }
        const response = await fetch(url, {
            method: "POST",
            headers: { 
                "Content-Type": "application/json"
             },
            body: JSON.stringify(request)
          }); 
        const data = await response.json();
        return data ;
    } catch (error) {
        console.log(error)
    }
}


//what will execute if you win 
function winner() {
    if(localStorage.getItem('stage') == 6){
        let winner = prompt('Has ganadoooo!!!! , introduce tu nombre');
        if (localStorage.getItem('record')){
            winRecord = JSON.parse(localStorage.getItem('record'))
        }
        winRecord.push(winner)
        localStorage.setItem('record' , JSON.stringify(winRecord) );
        let tryAgainBtn = document.createElement('button');
        tryAgainBtn.innerText = 'Iniciar de nuevo';
        tryAgainBtn.addEventListener('click' , () => {
            localStorage.removeItem('stage');
            loadPage();
        });
        questionsSec.appendChild(tryAgainBtn)
        winnerRecord(); 
    }
}


// will show the winners  safed in localStorage
function winnerRecord() {
    
    winnersCont.innerHTML = "";
    let winners = JSON.parse(localStorage.getItem('record'));
    if(winners){
        winners.forEach(element => {
            let winner = document.createElement('p');
            winner.innerText = element;
            winnersCont.appendChild(winner);
        });
    }
    
}

// will execute if you end the game  
function endGame() {
    let pointsReceived = JSON.parse(localStorage.getItem('stage')) - 1 ;
    let player = prompt('Dejanos tu nombre: ')
    let round = `${player}-${pointsReceived}`;
    if (localStorage.getItem('rounds')){
        roundRecord = JSON.parse(localStorage.getItem('rounds'))
    }
    roundRecord.push(round);
    localStorage.setItem('rounds' , JSON.stringify(roundRecord) );

    roundRecords();

}

// will display all the rounds safed in the localStorage
function roundRecords() {
    roundsCont.innerHTML = "";
    let rounds = JSON.parse(localStorage.getItem('rounds'));
    if(rounds){
        rounds.forEach(element => {
            let round = document.createElement('p');
            round.innerText = element;
            roundsCont.appendChild(round);
        });
    }
}


function removeQuestNodes(question,optionsLabel,optionsDiv,points,endBtn) {
    questionsSec.removeChild(question);
    questionsSec.removeChild(optionsLabel);
    questionsSec.removeChild(optionsDiv);
    pointsSec.removeChild(points);
    questionsSec.removeChild(endBtn);
}

function createAns(res , question,optionsLabel,optionsDiv,points,endBtn) {
    res.answers.forEach(element => {
        let opt = document.createElement('p');
        opt.innerText = element.answer;
        opt.addEventListener('click', ()=>{
            if (element.points == 1) {
                let prevCat = JSON.parse(localStorage.getItem('stage'));
                localStorage.setItem('stage', prevCat + 1);
                removeQuestNodes(question,optionsLabel,optionsDiv,points,endBtn);
                JSON.parse(localStorage.getItem('stage')) == 6 ? winner() : loadPage();
            } else {
                alert("Has perdido !!! 😱 , prueba de nuevo");
                localStorage.setItem('stage', 1);
                removeQuestNodes(question,optionsLabel,optionsDiv,points,endBtn);
                loadPage();
            }

        });
        optionsDiv.appendChild(opt);
    });
    
}

function createEndBtn(question,optionsLabel,optionsDiv,points) {
    let endBtn = document.createElement('button');
    endBtn.innerText = 'Salir';
    endBtn.addEventListener('click' , ()=>{
        endGame();
        localStorage.setItem('stage' , 1 );
        removeQuestNodes(question,optionsLabel,optionsDiv,points,endBtn);
        loadPage()
    });  
    return endBtn
}