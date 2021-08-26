Data = {};
Data.Input = {}

$(document).ready(function () {
});

var Form = {
    NormalCall: function () {
        axios.get('/Home/NormalCall')
            .then(function (response) {
                var result = response.data;

                debugger;
                if (result.isSuccess) {
                    alert(result.Name);
                }
                else {
                    if (result.message == "Unauthorized") {
                        location.reload();
                    } else {
                        alert(result.message);
                    }
                }
            })
            .catch(function (error) {
                // handle error
                console.log(error);
            })
            .then(function () {
                // always executed
            });
    }
}