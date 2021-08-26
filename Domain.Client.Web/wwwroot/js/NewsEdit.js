Data = {};
Data.Input = {}

$(document).ready(function () {
    Data.Id = Id;
    Form.Load();
});

var Form = {
    Load: function () {
        axios.get('/Master/GetNewsDetail/' + Data.Id)
            .then(function (response) {
                var result = response.data;

                if (result.isSuccess) {
                    $("#txtNewsId").val(result.data.NewsId);
                    $("#txtTitle").val(result.data.Title);
                    $("#txtContent").val(result.data.Content);
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
    },
    Cancel: function () {
        window.location.href = 'Master/MasterNews';
    },
    Submit: function () {
        var NewsId = $("#txtNewsId").val();
        var Title = $("#txtTitle").val();
        var Content = $("#txtContent").val();

        axios.post('/Master/UpdateNews', {
            Id: Data.Id,
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