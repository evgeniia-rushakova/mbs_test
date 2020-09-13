let container = document.querySelector('.class');
let elementsToSort = container.querySelectorAll('.elem');

let arrayOgElements = Array.apply(null, elementsToSort);
let sortedElem = arrayOgElements.sort(function (a, b) {
    if (parseInt(a.style.height) >= parseInt(b.style.height))
        return (1);
    return (-1);
})
elementsToSort.forEach(function (element) {
    element.style.order = parseInt(sortedElem.indexOf(element)) + 1;
})
