Data = {};
Data.Input = {}

$(document).ready(function () {
});

var Form = {
    Cancel: function () {
        window.location.href = 'Master/MasterNews';
    },
    Submit: function () {
        var NewsId = $("#txtNewsId").val();
        var Title = $("#txtTitle").val();
        var Content = $("#txtContent").val();

        axios.post('/Master/InsertNews', {
            NewsId: NewsId,
            Title: Title,
            Content: Content
        })
            .then(function (response) {
                var result = response.data;

                debugger;
                if (result.isSuccess) {
                    alert('Success');
                }
                else {
                    if (result.message == "Unauthorized") {
                        alert('Unauthorized');
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