let temp = 0
var delBtns = document.getElementsByClassName('delBtn')

/**
 * The function `ajoutCard` creates a new card element with 
 * a textarea and a delete button, and appends it to the 
 * `todoCards` element.
 */
function ajoutCard(parent) {

    temp = temp + 1

    const node1 = document.createElement('div');
    const node2 = document.createElement('textarea')
    const node3 = document.createElement('span')
    const iconFont = document.createElement('i')

    node1.id = 'card' + temp
    node1.className = 'card'

    node2.className = 'task';
    node2.maxLength = 200;
    node2.cols = 20;
    node2.rows = 15;
    node2.innerHTML = 'New task'

    node3.className = 'delBtn'

    iconFont.className = 'fa fa-trash'
    iconFont.ariaHidden = true

    node3.appendChild(iconFont)
    console.log(document.getElementsByClassName(parent.className))
    document.getElementsByClassName(parent.className)[0].appendChild(node1).appendChild(node2)
    document.getElementById('card' + temp).appendChild(node3)

}

/**
 * The function `removeCard` removes the parent
 * element of the clicked item from the DOM.
 */
function removeCard(){
    for (let item of delBtns) {
        item.addEventListener('click', () => {
            item.parentElement.remove()
        })
    }
}

document.getElementById('btnHTML').addEventListener('click', () => {
    let htmlDIV = document.getElementById('btnHTML').parentElement
    ajoutCard(htmlDIV);
    delBtns = document.getElementsByClassName('delBtn')
    removeCard()
})
document.getElementById('btnJS').addEventListener('click', () => {
    let jsDIV = document.getElementById('btnJS').parentElement
    ajoutCard(jsDIV);
    delBtns = document.getElementsByClassName('delBtn')
    removeCard()
})
document.getElementById('btnPHP').addEventListener('click', () => {
    let phpDIV = document.getElementById('btnPHP').parentElement
    ajoutCard(phpDIV);
    delBtns = document.getElementsByClassName('delBtn')
    removeCard()
})
document.getElementById('btnJAVA').addEventListener('click', () => {
    let javaDIV = document.getElementById('btnJAVA').parentElement
    ajoutCard(javaDIV);    
    delBtns = document.getElementsByClassName('delBtn')
    removeCard()
})