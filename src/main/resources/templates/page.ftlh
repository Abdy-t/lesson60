
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lesson 57. Javascript 101</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
    <link rel="stylesheet" href="/css/styles.css">
    <script src="/js/script.js"></script>
</head>
<body id="no-scroll" class="no-scroll" onload="addPostElements()">
<#--<button class="close-button" onclick="splashScreenHiddenFalse()">Exit</button>-->
<#--<form id="form" name="form" enctype="multipart/form-data"  method="post">-->

<form id="form" name="form" enctype="multipart/form-data" >
    <input type="hidden" name="idUser" value="${user.id}">
    <input type="file" name="photo">
    <input type="text" placeholder="description" name="description">
    <button type="submit" id="save-photo">Publish</button>
</form>
<form id="form-comment" name="form-comment" enctype="multipart/form-data" >
            <input type="hidden" name="idUser" value="${user.id}">
    <input type="text" placeholder="PHOTO ID" size="20" name="idPhoto"/>
    <input type="text" placeholder="COMMENT CCC" size="20" name="comment"/>
            <button type="submit" class='change' id="save-comments">Add comment</button>
</form>
<div class="container">
    <div class="row justify-content-center">
        <div class="col col-lg-7 posts-container" id="posts">
            <!-- single post start -->
            <!-- single post start -->
            <div class="card my-3">
                <!-- image block start -->
                <div>
                    <img class="d-block w-100 first_image" src="http://placekitten.com/500/500" alt="Post image">
                </div>
                <!-- image block end -->
                <div class="px-4 py-3">

                    <!-- post reactions block start -->
                    <div class="d-flex justify-content-around">
                        <span class="h1 mx-2 muted" id="like">
                            <i class="far fa-heart"></i>
                        </span>
                        <span class="h1 mx-2 muted">
                            <i class="far fa-comment"></i>
                        </span>
                        <span class="mx-auto"></span>               <!-- space between icons -->
                        <span class="h1 mx-2 muted" id="save">
                            <i class="far fa-bookmark"></i>
                        </span>
                    </div>
                    <!-- post reactions block end -->
                    <hr>
                    <!-- post section start -->
                    <div id="first_post">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum ad est cumque nulla voluptatem enim voluptas minima illum quis! Voluptatibus dolorem minus tempore aliquid corrupti nesciunt, obcaecati fuga natus officiis.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum ad est cumque nulla voluptatem enim voluptas minima illum quis! Voluptatibus dolorem minus tempore aliquid corrupti nesciunt, obcaecati fuga natus officiis.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum ad est cumque nulla voluptatem enim voluptas minima illum quis! Voluptatibus dolorem minus tempore aliquid corrupti nesciunt, obcaecati fuga natus officiis.</p>
                    </div>
                    <!-- post section end -->
                    <hr>
                    <!-- comments section start -->
                    <div id="comments">
                        <div class="py-2 pl-3">
                            <a href="#" class="muted">someusername</a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum ad est cumque nulla voluptatem enim voluptas minima illum quis!
                                Voluptatibus dolorem minus tempore aliquid corrupti nesciunt, obcaecati fuga natus officiis.</p>
                        </div>
                        <div class="py-2 pl-3">
                            <a href="#" class="muted">someusername</a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum ad est cumque nulla voluptatem enim voluptas minima illum quis! Voluptatibus dolorem minus tempore aliquid corrupti nesciunt, obcaecati fuga natus officiis.</p>
                        </div>
                    </div>
                    <form id="form-comment" name="form-comment" enctype="multipart/form-data">
                        <input type="hidden" name="idUser" value="001">
                        <input type="hidden" name="idPhoto" value="001">
                        <input type="text" placeholder="------" size="20" name="comment"/>
                        <button type="submit" class='change' id="save-comment">Add comment</button>
                     </form>
                    <!-- comments section end -->
                </div>
            </div>
<#--            <#list images as image>-->
<#--            <div class="card my-3 img">-->
<#--                <!-- image block start &ndash;&gt;-->
<#--                <div>-->
<#--                    <img class="d-block w-100" src="/images/${image.photo}" alt="Post image">-->
<#--                </div>-->
<#--                <!-- image block end &ndash;&gt;-->
<#--                <div class="px-4 py-3">-->
<#--                    <!-- post reactions block start &ndash;&gt;-->
<#--                    <div class="d-flex justify-content-around">-->
<#--                              <span class="h1 mx-2 muted" id="dbl-like">-->
<#--                                  <i class="far fa-heart"></i>-->
<#--                                  <p class="dblLike">double tap</p>-->
<#--                              </span>-->
<#--                        <span class="h1 mx-2 muted" id ="like-1">-->
<#--                                <i class="far fa-heart"></i>-->
<#--                              </span>-->
<#--                        <span class="h1 mx-2 muted">-->
<#--                                <i class="far fa-comment"></i>-->
<#--                              </span>-->
<#--                        <span class="mx-auto"></span>-->
<#--                        <span class="h1 mx-2 muted bookmark" id="bookmark-1">-->
<#--                                <i class="far fa-bookmark"></i>-->
<#--                              </span>-->
<#--                        <!--               <span class="h1 mx-2 muted">&ndash;&gt;-->
<#--                        <!--                <i class="fas fa-bookmark"></i>&ndash;&gt;-->
<#--                        <!--              </span>&ndash;&gt;-->
<#--                    </div>-->
<#--                    <!-- post reactions block end &ndash;&gt;-->
<#--                    <hr>-->
<#--                    <!-- post section start &ndash;&gt;-->
<#--                    <div>-->
<#--                        <p>${image.description}</p>-->
<#--                    </div>-->
<#--                    <!-- post section end &ndash;&gt;-->
<#--                    <hr>-->
<#--                    <!-- comments section start &ndash;&gt;-->
<#--                    <div class="comment-block" id="comments">-->
<#--&lt;#&ndash;                        <#if image.comments.isEmpty() >&ndash;&gt;-->
<#--&lt;#&ndash;                        <#list image.comments as comment>&ndash;&gt;-->
<#--&lt;#&ndash;                        <div class="py-2 pl-3">&ndash;&gt;-->
<#--&lt;#&ndash;                            <a href="#" class="muted">${comment.userAccount}</a>&ndash;&gt;-->
<#--&lt;#&ndash;                            <p>${comment.commentText}</p>&ndash;&gt;-->
<#--&lt;#&ndash;                        </div>&ndash;&gt;-->
<#--&lt;#&ndash;                        </#list>&ndash;&gt;-->
<#--&lt;#&ndash;                        </#if>&ndash;&gt;-->
<#--                        &lt;#&ndash;                        <button class='comment-button' onclick="addComment()">Add comment</button>&ndash;&gt;-->
<#--                        <form id="form-comment" name="form-comment" enctype="multipart/form-data" action="/page/comment" method="post">-->
<#--                            <input type="hidden" name="idUser" value="${user.id}">-->
<#--                            <input type="hidden" name="idPhoto" value="${image.id}">-->
<#--                            <input type="text" placeholder="comment text" size="20" name="comment"/>-->
<#--                            <button type="submit" class='change' id="save-comment">Add comment</button>-->
<#--                        </form>-->
<#--                    </div>-->
<#--                    <!-- comments section end &ndash;&gt;-->
<#--                </div>-->

<#--            </div>-->
<#--            </#list>-->
            <!-- single post end -->
        </div>
    </div>
</div>
<!-- add post -->
<#--<button class='comment-button' onclick="addPostElement()">Add post</button>-->
<!-- Splash screen -->
<section id="page-splash" class="page-splash">
<#--    <button class="open-button" onclick="splashScreenHiddenTrue()">To come in</button>-->
    <div class="card" id="registration-form">
        <div class="card-body">
            <h3 class="h3">Registration</h3>
        </div>
    </div>
</section>
</body>
</html>

