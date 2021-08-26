Data = {};
Data.Input = {}

$(document).ready(function () {
    Form.Init();
    Form.FillData();
});

var Form = {
    Init: function () {
        $('#kt_datatable').dataTable({
            responsive: true,
            data: [],
            filter: false,
            columns: [
                {
                    data: 'Id',
                    render: function (data, type, full) {
                        var strReturn = "";
                        strReturn += "<button type='button' title='Edit' class='btn btn-info btn-sm btEdit'><i class='fa fa-edit'></i> Edit </button>";
                        strReturn += "<button type='button' title='Delete' class='btn btn-danger btn-sm btDelete'><i class='fa fa-edit'></i> Delete </button>";
                        return strReturn;
                    }
                },
                { data: 'NewsId' },
                { data: 'Title' },
                { data: 'Content' }
            ]
        });

        $("#kt_datatable tbody").on("click", "button.btEdit", function (e) {
            debugger;
            var data = $("#kt_datatable").DataTable().row($(this).parents("tr")).data();
            if (data != null) {
                window.location.href = 'Master/NewsEdit/' + data.Id;
            }
        });
        $("#kt_datatable tbody").on("click", "button.btDelete", function (e) {
            debugger;
            var data = $("#kt_datatable").DataTable().row($(this).parents("tr")).data();
            if (data != null) {
                axios.post('/Master/DeleteNews', {
                    Id: data.Id
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
        });
    },
    FillData: function () {
        axios.get('/Master/GetNews')
            .then(function (response) {
                var result = response.data;

                debugger;
                if (result.isSuccess) {
                    var table = $('#kt_datatable').DataTable();
                    table.clear().rows.add(result.data).draw();
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