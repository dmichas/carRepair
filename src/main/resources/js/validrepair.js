$(document).ready (function () {
    $("form#repairForm").validrep()({
        rules: {
            plate: {
                required: true,
                length: 8
            },
            status: {
                required: true,
                minlength: 7
            },
            date: {
                required: true,
                minlength: 5
            },
            type:{
                required: true,
                minlength: 3
            },
            cost: {
                required: true,
                minlength: 3
            },
            description: {
                required: true

            },
            messages: {

                plate: {
                    required: "Please enter a plate number",
                    length: "Plate must be 8 digits"
                },
                status: {
                    required: "Please select a status option"
                },
                date: {
                    required: "Please provide the date of forthcoming service",
                    minlength: "Date must be provided as date format"
                },
                type: {
                    required: "Please provide type of service"
                },
                cost: {
                    required: "Please select expenses of the car.",
                    minlength: "Cost must be at least 1 digits long"
                },
                description: {
                    required: "Please type in description."
                }
            }
        }
    });
});


