'use strict';

function createPostElement(post, user) {
    let posts = `
          <!-- image block start -->
          <div>
            <img class="d-block w-100" src="/images/${post.photo}" alt="Post image">
            <p> ${post.description}</p>
          </div>
          <!-- image block end -->
          <div class="px-4 py-3">
            <!-- post reactions block start -->
            <div class="d-flex justify-content-around">
              <span class="h1 mx-2 muted">
                <i class="far fa-heart"></i>
              </span>
              <span class="h1 mx-2 muted">
                <i class="far fa-comment"></i>
              </span>
              <span class="mx-auto"></span>
              <span class="h1 mx-2 muted">
                <i class="far fa-bookmark"></i>
              </span>
            </div>
            <!-- post reactions block end -->
            <hr>
            <!-- post section start -->
            <div>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum ad est cumque nulla voluptatem enim voluptas minima
                 illum quis! Voluptatibus dolorem minus tempore aliquid corrupti nesciunt, obcaecati fuga natus officiis.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum ad est cumque nulla voluptatem enim voluptas minima
                 illum quis! Voluptatibus dolorem minus tempore aliquid corrupti nesciunt, obcaecati fuga natus officiis.</p>
            </div>
            <!-- post section end -->
            <hr>
            <!-- comments section start -->
            <div id="${post.id}">
              <div class="py-2 pl-3">
                <a href="#" class="muted">someusername</a>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum ad est cumque nulla voluptatem enim
                voluptas minima illum quis! Voluptatibus dolorem minus tempore aliquid corrupti nesciunt, obcaecati fuga natus officiis.</p>
              </div>
              <div class="py-2 pl-3">
                <a href="#" class="muted">someusername</a>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum ad est cumque nulla voluptatem enim
                voluptas minima illum quis! Voluptatibus dolorem minus tempore aliquid corrupti nesciunt, obcaecati fuga natus officiis.</p>
              </div>
            </div>
            <form id="form-comment" name="form-comment" enctype="multipart/form-data">
                        <input type="hidden" name="idUser" value="${user.id}">
                        <input type="hidden" name="idPhoto" value="${post.id}">
                        <input type="text" placeholder="${post.id}" size="20" name="comment"/>
                        <button type="submit" class='change' id="save-comment">Add comment</button>
            </form>
            <!-- comments section end -->
          </div>`;
    let newPost = document.createElement(`div`);
    newPost.innerHTML += posts;
    newPost.classList.add("card", "my-3");
    return newPost;
}
function createCommentElement(comment, user) {
    let content = '<a href="#" class="muted">' + user.email + '</a>' + '<p>'+ comment.commentText + '</p>';
    let element = document.createElement('div');
    element.innerHTML = content;
    element.className = "py-2 pl-3";
    return element;
}
async function getPosts() {
    let url = 'http://localhost:8080/getPosts';
    let response = await fetch(url);
    console.log(response);
    return await response.json();
}
async function getComments() {
    let url = 'http://localhost:8080/getComments';
    let response = await fetch(url);
    console.log(response);
    return await response.json();
}

async function getUser() {
    let url = 'http://localhost:8080/getUser';
    let response = await fetch(url);
    console.log(response);
    return await response.json();
}

async function addPostElements(){
    let posts = await getPosts();
    let user = await getUser();
    let comments = await getComments();

    let user1 = {
        id: user.id,
        email: user.email
    };
    for (let i = 0; i < posts.length; i++){
        let post = {
            id: posts[i].id,
            photo: posts[i].photo,
            description: posts[i].description
        };
        document.getElementById("posts").append(createPostElement(post, user1));
    }
    for (let i = 0; i < comments.length; i++){
        let comment = {
            id: comments[i].id,
            idUser: comments[i].idUser,
            idPhoto: comments[i].idPhoto,
            commentText: comments[i].commentText
        };
        document.getElementById(comments[i].idPhoto).append(createCommentElement(comment, user1));
    }
}


window.addEventListener('load', function () {
    const saveButton = document.getElementById("save-photo");
    saveButton.addEventListener("click",function () {
        const publicationForm = document.getElementById("form");
        let data = new FormData(publicationForm);
        console.log("PHOTO ELEMENT SAVED");
        // alert.apply("DDD");
        fetch("http://localhost:8080/page",{
            method: 'POST',
            body: data
        }).then(r => r.json()).then(data => {
            window.location.href = "http://localhost:8080/page"
        });
    });

    const saveCommentButton = document.getElementById("save-comments");
    saveCommentButton.addEventListener("click", function() {
        const commentForm = document.getElementById("form-comment");
        let data = new FormData(commentForm);
        console.log("COMMENT ELEMENT SAVED");
        fetch("http://localhost:8080/page/comment", {
            method: 'POST',
            body: data
        }).then(r => r.json()).then(data => {
            window.location.href = "http://localhost:8080/page"
        });
    });
});