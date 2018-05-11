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
</div>
