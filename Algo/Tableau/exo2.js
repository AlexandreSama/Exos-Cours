let tab1 = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
let tab2 = []

tab1.forEach(element => {
    switch (element) {
        case 'a':
            tab2.push(element)
            break;
        case 'e':
            tab2.push(element)
            break;
        case 'i':
            tab2.push(element)
            break;
        case 'o':
            tab2.push(element)
            break;
        case 'u':
            tab2.push(element)
            break;
        case 'y':
            tab2.push(element)
            break;
        default:
            break;
    }
});

console.log(tab2)