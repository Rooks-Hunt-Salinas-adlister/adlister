<%-- Navbar --%>
<nav class="navbar navbar-expand-lg text-white bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand text-white" href="/ads">Jimothy's List</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
<%-- Dropdown Button --%>
        <div class="collapse navbar-collapse text-white" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown text-white">
                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Profile
                    </a>
                    <ul class="dropdown-menu text-white">
                        <li><a class="dropdown-item" href="#">Profile Page</a></li>
                        <li><a class="dropdown-item" href="/logout">Logout</a></li>
                    </ul>
                </li>
            </ul>
            <!-- Button trigger modal -->
            <a href="/create">
                <button   type="button" class="btn btn-primary text-white" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Post Ad
                </button>
            </a>
<%-- Search Button --%>
            <form class="d-flex" role="search" style="margin-top: 1em; margin-left: 2em">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<%--<!-- Modal -->--%>
<%--<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <form action="/ads/create" method="post">--%>

<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h1 class="modal-title fs-5" id="exampleModalLabel">Post an Ad</h1>--%>
<%--                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<%--                <input class="form-control" id="AdTitle" type="text" placeholder="Ad Title" aria-label="default input example">--%>
<%--                <div class="mb-3">--%>
<%--                    <textarea class="form-control" id="AdDescription" placeholder="Ad Description" rows="3"></textarea>--%>
<%--                </div>--%>
<%--                <input class="form-control" id="AdImage" type="text" placeholder="Image URL" aria-label="default input example">--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="checkbox" value="automotive" id="automotive">--%>
<%--                    <label class="form-check-label" for="automotive">--%>
<%--                        Automotive--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="checkbox" value="recreational" id="recreational">--%>
<%--                    <label class="form-check-label" for="recreational">--%>
<%--                        Recreational--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="checkbox" value="technology" id="technology">--%>
<%--                    <label class="form-check-label" for="technology">--%>
<%--                        Technology--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="checkbox" value="service" id="service">--%>
<%--                    <label class="form-check-label" for="service">--%>
<%--                        Service--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="checkbox" value="academic" id="academic">--%>
<%--                    <label class="form-check-label" for="academic">--%>
<%--                        Academic--%>
<%--                    </label>--%>
<%--                </div>--%>

<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>--%>
<%--                <button type="button" class="btn btn-primary">Post</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</div>--%>



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
