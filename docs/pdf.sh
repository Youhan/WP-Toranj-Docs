#!bin/bash

path=${PWD}
# delete pdf directory
rm -rf "$path/pdf"
mkdir "$path/pdf"

md-to-pdf --config-file "$path/config.json" "$path/README.md" "$path/pdf/01.pdf"
md-to-pdf --config-file "$path/config.json" "$path/installation.md" "$path/pdf/02.pdf"
md-to-pdf --config-file "$path/config.json" "$path/import.md" "$path/pdf/03.pdf"
md-to-pdf --config-file "$path/config.json" "$path/options.md" "$path/pdf/04.pdf"
md-to-pdf --config-file "$path/config.json" "$path/blog.md" "$path/pdf/05.pdf"
md-to-pdf --config-file "$path/config.json" "$path/page.md" "$path/pdf/06.pdf"
md-to-pdf --config-file "$path/config.json" "$path/builder.md" "$path/pdf/07.pdf"
md-to-pdf --config-file "$path/config.json" "$path/gallery.md" "$path/pdf/08.pdf"
md-to-pdf --config-file "$path/config.json" "$path/gallery-bulk.md" "$path/pdf/09.pdf"
md-to-pdf --config-file "$path/config.json" "$path/kenburn.md" "$path/pdf/10.pdf"
md-to-pdf --config-file "$path/config.json" "$path/portfolio.md" "$path/pdf/11.pdf"
md-to-pdf --config-file "$path/config.json" "$path/double-carousel.md" "$path/pdf/12.pdf"
md-to-pdf --config-file "$path/config.json" "$path/image-size.md" "$path/pdf/13.pdf"
md-to-pdf --config-file "$path/config.json" "$path/update.md" "$path/pdf/14.pdf"


"/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py" -o "$path/pdf/toranj-docs.pdf" "$path/pdf/01.pdf" "$path/pdf/02.pdf" "$path/pdf/03.pdf" "$path/pdf/04.pdf" "$path/pdf/05.pdf" "$path/pdf/06.pdf" "$path/pdf/07.pdf" "$path/pdf/08.pdf" "$path/pdf/09.pdf" "$path/pdf/10.pdf" "$path/pdf/11.pdf" "$path/pdf/12.pdf" "$path/pdf/13.pdf" "$path/pdf/14.pdf"