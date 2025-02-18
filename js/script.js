$(function () {
    'use strict';

    /*
     * Get JSON Data
     */
    function getAllData() {
        $.ajax({
            url: "http://localhost/json-practice/config.php",
            type: 'POST',
            dataType: 'JSON',
            success: function (data) {
                let target = $('.all_records');
                data.forEach(function (item) {
                    target.append(
                        `<tr>
                            <td>${item.id}</td>
                            <td>${item.name}</td>
                            <td>${item.address}</td>
                            <td>${item.class}</td>
                            <td>${item.phone}</td>
                            <td>
                                <a href='edit.php'>Edit</a>
                                <a href='delete-inline.php'>Delete</a>
                            </td>
                        </tr>`
                    );
                })
            },
        });
    }

    getAllData();

    /*
     * Search BY ID
     */
    function searchData(){
        $('#search-value').on('keyup', function(e){
            e.preventDefault();
            let searchVal = $('#search-value').val();
            console.log(searchVal)
            if(searchVal === ""){
                let target = $('.all_records');
                target.html("");
                getAllData();
            }else{
                $.ajax({
                    url: "http://localhost/json-practice/config.php",
                    type: 'POST',
                    data: {
                        searchVal: searchVal,
                    },
                    dataType: 'JSON',
                    success: function (data) {
                        let target = $('.all_records');
                        target.html("");
                        data.forEach(function (item) {
                            target.append(
                                `<tr>
                                    <td>${item.id}</td>
                                    <td>${item.name}</td>
                                    <td>${item.address}</td>
                                    <td>${item.class}</td>
                                    <td>${item.phone}</td>
                                    <td>
                                        <a href='edit.php'>Edit</a>
                                        <a href='delete-inline.php'>Delete</a>
                                    </td>
                                </tr>`
                            );
                        })
                    },
                });
            }
        })
    }
    searchData()
})