function deleteCom(endpoint, id, obj) {
    let d = document.getElementById("load" + id)
    d.style.display = "block";
    obj.style.display = "none";

    fetch(endpoint, {
        method: "delete"
    }).then(function (res) {
        if (res.status === 204)
        {
            let r = document.getElementById("row" + id);
            r.style.display = "none";
        }

    }).catch(function (err) {
        console.error(err)
    })
}


function loadAdminCompany(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        console.info(data);
        let msg = "";
        for (let i = 0; i < data.length; i++)
            msg += `
     
                <tr id="row${data[i][0]}">
                    <td class="company-title">${data[i][1]}</td>
                    <td class="status" id="${data[i][5]}"> 
         <button class="btn head-btn2"  id="${data[i][5]}"
        onclick="updateAcc(${data[i][2]},${data[i][5]})">  ${data[i][2] == 1 ? "Approved" : "Pending Review"}</button>
                       
                    </td>
                    <td class="date">    ${new Date(data[i][3]).toLocaleDateString()} - (MM/dd/yyyy)</td>
                    <td class="web" value="${data[i][4]}" > 
                    <td class="action">
                        <div class="spinner-border text-success" style="display:none" id="load${data[i][0]}"></div>
                        <button class="btn btn-danger" onclick="deleteCom('${endpoint + '/' + data[i][0]}', ${data[i][0]}, this)">Delete</button>
                    </td>
                </tr>
        `

        let d = document.getElementById("mainId");
        d.innerHTML = msg;

      
    })
}

function updateAcc(obj, accId) {

    fetch("api/accounts", {
        method: "put",
        body: JSON.stringify({
            "id": accId,
            "isComfirm": obj
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        return res.json()
    }).then(function (data) {
        document.getElementById(accId).innerHTML  = (data == 1 ? "Approved" : "Pending Review")       
    })
}









function loadAdminCate(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        console.info(data);
        let msg = "";
        for (let i = 0; i < data.length; i++)
            msg += `
     
                <tr id="row${data[i][0]}">
                    <td class="company-title">${data[i][1]}</td>
                    <td class="status" id="${data[i][5]}"> 
         <button class="btn head-btn2"  id="${data[i][5]}"
        onclick="updateAcc(${data[i][2]},${data[i][5]})">  ${data[i][2] == 1 ? "Approved" : "Pending Review"}</button>
                       
                    </td>
                    <td class="date">    ${new Date(data[i][3]).toLocaleDateString()} - (MM/dd/yyyy)</td>
                    <td class="web" value="${data[i][4]}" > 
                    <td class="action">
                        <div class="spinner-border text-success" style="display:none" id="load${data[i][0]}"></div>
                        <button class="btn btn-danger" onclick="deleteCom('${endpoint + '/' + data[i][0]}', ${data[i][0]}, this)">Delete</button>
                    </td>
                </tr>
        `

        let d = document.getElementById("mainId");
        d.innerHTML = msg;

      
    })
}


