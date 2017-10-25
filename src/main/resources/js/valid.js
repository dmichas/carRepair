$(document).ready (function vali () {
    $("#mainForm").validate()({
            rules: {
                vat: {
                    required: true,
                    length: 9
                },
                plate: {
                    required: true,
                    minlength: 7
                },
                model: {
                    required: true,
                    minlength: 5
                },
                color: {
                    required: true,
                    minlength: 3
                },
                year: {
                    required: true,
                    minlength:4

                },
                messages: {

                    vat: {
                        required: "Please enter a vat number",
                        minlength: "Vat must be 9 digits"
                    },
                    plate: {
                        required: "Please provide a plate number",
                        minlength: "Plate must be at least 7 characters long"
                    },
                    model: {
                        required: "Please provide model",
                        minlength: "Tax number must be 5 digits"
                    },
                    colour: {
                        required: "Please type the colour of the car.",
                        minlength: "Colour must be at least 3 characters long"
                    },
                    year: {
                        required: "Please type the year of the car.",
                        minlength: "Year must be 4 characters long"
                }
            }
        })

$("#username").focus(function () {
    var firstname = $("#firstname").val();
    var lastname = $("#lastname").val();
    if (firstname && lastname && !this.value) {
        this.value = firstname + "." + lastname;
    }

})

