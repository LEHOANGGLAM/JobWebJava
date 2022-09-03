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
        onclick="updateAcc(${data[i][5]})">  ${data[i][2] == 1 ? "Approved" : "Pending Review"}</button>
                       
                    </td>
                    <td class="date">    ${new Date(data[i][3]).toLocaleDateString()} - (MM/dd/yyyy)</td>
                    <td class="web" value="${data[i][4]}" > <a href="${data[i][4]}">${data[i][4]}</a></td>
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



function updateAcc(accId) {

    fetch("api/accounts", {
        method: "put",
        body: JSON.stringify({
            "id": accId
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        return res.json()
    }).then(function (data) {

        document.getElementById(accId).innerHTML = `<button class="btn head-btn2"  
    onclick="updateAcc(${accId})" id="${accId}">  ${data == 1 ? "Approved" : "Pending Review"}</button>`
    })
}


//
//function updateInfo(obj, accId) {
//
//    fetch("api/accounts", {
//        method: "put",
//        body: JSON.stringify({
//            "id": accId,
//            "isComfirm": obj.ge
//        }),
//        headers: {
//            "Content-Type": "application/json"
//        }
//    }).then(function (res) {
//        return res.json()
//    }).then(function (data) {
//        document.getElementById(accId).innerHTML  = (data == 1 ? "Approved" : "Pending Review")       
//    })
//}








function deleteJobPost(endpoint, id, obj) {
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


function loadJobPostManagerApplied(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        console.info(data);
        let msg = "";
        for (let i = 0; i < data.length; i++)
            msg += `
     
              
                            <tr id="row${data[i][0].id}">
                                <th class="company-title">${data[i][0].id}</th>
                                <th class="company-title">${data[i][0].jobTitle}</th>
                                <th id="number${data[i][0].id}">${data[i][1]}</th>
                                <th class="date">${data[i][0].jobNature}</th>
                                <th class="company-title">${data[i][0].streetName}, ${data[i][0].city}</th>
                                <th>  <button class="btn head-btn2 btn-topcv-primary btn-theme" 
                                             onClick="parent.location='candidateList/${data[i][0].id}'" >Watch</button></th>
                                <th>  <button class="btn head-btn2 btn-topcv-primary btn-theme" 
                                             onClick="parent.location='postJob/${data[i][0].id}'"  >Edit</button></th>


                                <th> 
                                   
                                       <div class="spinner-border text-success" style="display:none" id="load${data[i][0].id}"></div>
                                        <button class="btn head-btn2 btn-topcv-primary btn-theme" 
                                                onclick="deleteJobPost('${endpoint + '/' + data[i][0].id}', ${data[i][0].id}, this)">
                                        Delete</button>
                                </th>
                                 

                            </tr>

        `

        let d = document.getElementById("mainId");
        d.innerHTML = msg;


    })
}

function loadJobPostManagerNoAppiled(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        console.info(data);
        let msg = "";
        for (let i = 0; i < data.length; i++)
            msg += `
     
              
                            <tr id="row${data[i].id}">
                                <th class="company-title">${data[i].id}</th>
                                <th class="company-title">${data[i].jobTitle}</th>
                              
                                <th class="date">${data[i].jobNature}</th>
                                <th class="company-title">${data[i].streetName}, ${data[i].city}</th>
                                <th>  <button class="btn head-btn2 btn-topcv-primary btn-theme" 
                                             onClick="parent.location='candidateList/${data[i].id}'" >Watch</button></th>
                                <th>  <button class="btn head-btn2 btn-topcv-primary btn-theme" 
                                             onClick="parent.location='postJob/${data[i].id}'"  >Edit</button></th>


                                <th> 
                                   
                                       <div class="spinner-border text-success" style="display:none" id="load${data[i].id}"></div>
                                        <button class="btn head-btn2 btn-topcv-primary btn-theme" 
                                                onclick="deleteJobPost('${endpoint + '/' + data[i].id}', ${data[i].id}, this)">
                                        Delete</button>
                                </th>
                                 

                            </tr>

        `

        let d = document.getElementById("mainId2");
        d.innerHTML = msg;


    })
}
//
// ${new Date(data[i][3]).toLocaleDateString()} - (MM/dd/yyyy)



function loadUserAdmin(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        console.info(data);
        let msg = "";
        for (let i = 0; i < data.length; i++)
            msg += `
     
                <tr id="row${data[i].id}">
                    <td class="company-title">${data[i].username}</td>
                    <td> ${data[i].firstName} ${data[i].lastName}</td>
       
                       
                    <td class="date">    ${new Date(data[i].dateOfBirth).toLocaleDateString()} - (MM/dd/yyyy)</td>
               
                    <td class="action">
                        <div class="spinner-border text-success" style="display:none" id="load${data[i].id}"></div>
                        <a class="btn btn-danger" href="">Change Password</a>
                    </td>
        <td class="action">
                        <div class="spinner-border text-success" style="display:none" id="load${data[i].id}"></div>
                        <button class="btn btn-danger" onclick="deleteUser('${endpoint + '/' + data[i].id}', ${data[i].id}, this)">Delete</button>
                    </td>
                </tr>
        `

        let d = document.getElementById("mainId");
        d.innerHTML = msg;


    })
}
function deleteUser(endpoint, id, obj) {
  
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