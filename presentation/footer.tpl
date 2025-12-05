

</section>
</div><!-- /.container -->
</div>
<footer>

    <div class="container-fluid container-md">
        <div class="row">
            <div class="col">
                <div class="logo d-flex align-items-center">
                    <a href="http://{$WEB_ROOT}{$PUBLC_DIR}">
                        <img class="logo-img" src="http://{$WEB_ROOT}{$PUBLCI_DIR}/img/skull_clean_light.png" alt="Skull clean" />
                    </a>
                    <h1><a href="http://{$WEB_ROOT}{$PUBLC_DIR}">blog.mikejw.co.uk</a></h1>
                </div>

                <div class="separator-w"></div>
                <div class="d-flex align-items-center justify-content-between align-items-center">
                    <div class="terms">
                        <span class="me-4">Copyright © {$smarty.now|date_format:'%Y'} Michael Whiting.</span>
                        <span>
                            <span>
                                    <a target="_blank" href="https://twitter.com/mikejw" class="text-accent1">
                                        Twitter&nbsp;&nbsp;<i class="fa-brands fa-twitter"></i>
                                    </a>
                            </span>
                            <div class="separator-h"></div>
                            <span>
                                    <a target="_blank" href="https://instagram.com/intimacywithmedium" class="text-accent1">
                                        Instagram&nbsp;&nbsp;<i class="fa-brands fa-instagram"></i>
                                    </a>
                            </span>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
</div>
{if $disqusUsername neq ''}
    <script id="dsq-count-scr" src="//{$disqusUsername}.disqus.com/count.js" async></script>
{/if}
<script src="http://{$WEB_ROOT}{$PUBLIC_DIR}/vendor/js/main.min.js"></script>
<script src="http://{$WEB_ROOT}{$PUBLIC_DIR}/js/common.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bs5-lightbox@1.8.5/dist/index.bundle.min.js"></script>
<script src="http://{$WEB_ROOT}{$PUBLIC_DIR}/js/blog.js"></script>

</body>
</html>
