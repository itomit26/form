<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .loader {
            background-color: #060522;
            position: fixed;
            right: 0;
            left: 0;
            top: 0;
            bottom: 0;
            z-index: 222222;
        }

        .loader svg {
            position: absolute;
            left: 50%;
            top: 50%;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }

        .loader svg path,
        .loader svg rect {
            fill: #ff565b;
        }
        </style>
    </head>
    <body>
        <div class="loader">
                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                     width="34px" height="40px" viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;" xml:space="preserve">
                <rect x="0" y="10" width="4" height="10" fill="#333" opacity="0.2">
                <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0s" dur="0.8s" repeatCount="indefinite" />
                <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0s" dur="0.8s" repeatCount="indefinite" />
                <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0s" dur="0.8s" repeatCount="indefinite" />
                </rect>
                <rect x="8" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.15s" dur="0.8s" repeatCount="indefinite" />
                <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.15s" dur="0.8s" repeatCount="indefinite" />
                <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.15s" dur="0.8s" repeatCount="indefinite" />
                </rect>
                <rect x="16" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.3s" dur="0.8s" repeatCount="indefinite" />
                <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.3s" dur="0.8s" repeatCount="indefinite" />
                <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.3s" dur="0.8s" repeatCount="indefinite" />
                </rect>
                </svg>
            </div>
        <script>
            setTimeout(function () {
                $('.loader').fadeToggle();
            }, 1500);

            $("a[href='#top']").click(function () {
                $("html, body").animate({scrollTop: 0}, "slow");
                return false;
            });
        </script>
    </body>
</html>
