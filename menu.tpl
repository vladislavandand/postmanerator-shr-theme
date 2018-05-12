<div class="scrollspy">
    <ul id="main-menu" data-spy="affix" class="nav">
        <li>
            <a href="#doc-general-notes">General notes</a>
        </li>
        {{ with $structures := .Structures }}
        <li>
            <a href="#doc-api-structures">API structures</a>
            <ul>
                {{ range $structures }}
                <li>
                    <a href="#struct-{{ .Name }}">{{ .Name }}</a>
                </li>
                {{ end }}
            </ul>
        </li>
        {{ end }}
        <li>
            <a href="#doc-api-detail">API detail</a>
        </li>
        {{ range .Requests }}
        <li>
            <a href="#request-{{ .Name }}">{{ .Name }}</a>
        </li>
        {{ end }}
        {{ range .Folders }}
        {{ $folder := . }}
        <li>
            <a href="#folder-{{ $folder.Name }}">{{ $folder.Name }}</a>
            <ul>
                {{ range $folder.Requests }}
                <li>
                    <a href="#request-{{ $folder.Name }}-{{ .Name }}">{{ .Name }}</a>
                </li>
                {{ end }}
            </ul>
        </li>
        {{ end }}
    </ul>
    <ul>
        <div id="download-postman-dump" data-postman-action="collection/import" data-postman-var-1="3510040-da495d4c-ba87-8398-3232-e00942197511-7TT6oog"></div>
        <script src="./runbutton.js" type="text/javascript" id="public-run-button-embed" data-web-host="https://www.getpostman.com/" data-button-url="https://run.pstmn.io/button.js"></script>
    </ul>
</div>
